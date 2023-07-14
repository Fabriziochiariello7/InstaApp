import SwiftUI

struct CameraView: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State var isNavigationViewActive = false
    @State var label = ""
    @ObservedObject var classifier: ImageClassifier
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: ReturnView(), isActive: $isNavigationViewActive, label: {
                    EmptyView()
                })
                HStack{
                    Button {
                        presentation.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .scaleEffect(1)
                    }
                    .padding(.leading, 0.0)
                    Spacer()
                    Image("Logo")
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                HStack{
                    Image(systemName: "photo")
                        .onTapGesture {
                            isPresenting = true
                            sourceType = .photoLibrary
                        }
                    
                    Image(systemName: "camera")
                        .onTapGesture {
                            isPresenting = true
                            sourceType = .camera
                        }
                }
                .font(.title)
                .foregroundColor(.primary)
                
                Rectangle()
                    .strokeBorder()
                    .foregroundColor(.primary)
                    .overlay(
                        Group {
                            if uiImage != nil {
                                Image(uiImage: uiImage!)
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                    )
                
                VStack{
                    Button(action: {
                        if uiImage != nil {
                            classifier.detect(uiImage: uiImage!)
                        }
                    }) {
                        Image(systemName: "bolt.fill")
                            .foregroundColor(.yellow)
                            .font(.title)
                    }
                    
                    
                    Group {
                        if let imageClass = classifier.imageClass {
                            HStack{
                                Text("Image categories:")
                                    .font(.caption)
                                Text(imageClass)
                                    .bold()
                                
                                
                            }.onAppear(){
                                label = imageClass
                            }
                        } else {
                            HStack{
                                Text("Image categories: N/A")
                                    .font(.caption)
                            }
                        }
                    }
                    .font(.subheadline)
                    .padding()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .fullScreenCover(isPresented: $isPresenting){
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }
                .ignoresSafeArea()
            
        }
        .onChange(of: label, perform: {_ in
            if uiImage != nil{
                if label == "pot, flowerpot"{
                    isNavigationViewActive = true                    
                    
                }
            }
        })
        
        .padding()
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView(classifier: ImageClassifier())
    }
}

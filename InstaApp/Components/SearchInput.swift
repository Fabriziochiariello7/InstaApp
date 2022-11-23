//
//  SearchInput.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct SearchInput: View {
    @State var text: String
    @State var nextPage: Bool = false
    
    var body: some View {
        
        
            HStack {
                
                    
              
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.secondary)
                    
                    TextField("Search", text: $text)
                    
                }
                .frame(width: 300)
                .padding(10)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                
                NavigationLink(destination: CameraView(classifier: ImageClassifier()), label: {Image("Camera1")
                    .scaledToFit() })
                
                        
                    
                }
               
                
               
                
                    
                
            
                
                
                
            }
            
}

struct SearchInput_Previews: PreviewProvider {
    static var previews: some View {
        SearchInput(text: "")
    }
}

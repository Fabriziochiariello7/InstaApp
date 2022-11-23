//
//  ReturnPostHeader.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 21/11/22.
//

import SwiftUI

struct ReturnPostHeader: View {
    @State var buttonText = "Follow"
    @State var textColor = Color.white
    @State var buttonColor = Color.blue
    
    var body: some View {
        HStack {
            HStack {
                Image("Plant1")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .cornerRadius(50)
            }
            
            Spacer()
            
            VStack {
                HStack{
                    Text("19.5M")
                        .fontWeight(.bold)
                    Text("posts")
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                }
                HStack{
                   
                    Button(action:{
                        if buttonText == "Follow"{
                            buttonText = "Following"
                            textColor = Color.black
                            buttonColor = Color(UIColor.secondarySystemBackground)
                        } else {
                            buttonText = "Follow"
                            textColor = Color.white
                            buttonColor = Color.blue
                        }
                        
                    },
                           label: {
                        Text (buttonText)
                            .fontWeight(.bold)
                            .foregroundColor(textColor)
                            .padding(10)
                            .padding(.horizontal, 40.0)
                            .background(buttonColor.opacity(0.8))
                            .cornerRadius(10)
                            
                            
                        
                    })
                    
                    
                    
                }
                HStack{
                    
                    Text("See a few top posts each week")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(.secondary)
                    
                }
            }
        }
        .padding(.vertical,10)
        .padding(.horizontal, 15)
    }
}

struct ReturnPostHeader_Previews: PreviewProvider {
    static var previews: some View {
        ReturnPostHeader()
    }
}

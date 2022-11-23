//
//  Story.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct Font{
    
    
}

struct Story: View {
    
    var image: String = "Profile"
    var name: String = "FChiariello"
   
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height:60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing),
                            lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
                .fontWeight(.regular)
                
        }
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story()
    }
}

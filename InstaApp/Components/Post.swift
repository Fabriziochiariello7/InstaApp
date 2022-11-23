//
//  Post.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct Post: View {
    var image: String = "PostPhoto"
    var description: String = "This is my favorite cartoon ever!"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            
            PostContent(image: image)
            
            Text("Liked by Steph and others")
                .font(.footnote)
                .fontWeight(.bold)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack{
                HStack(spacing: 7.0){
                    Image("Profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                
                Spacer()
                
                HStack{
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
                
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}


struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}

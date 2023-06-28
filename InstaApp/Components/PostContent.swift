//
//  PostContent.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct PostContent: View {
    var image: String = "PostPhoto"
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack{
                HStack(spacing: 10.0){
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}

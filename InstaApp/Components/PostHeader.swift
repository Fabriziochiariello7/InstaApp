//
//  PostHeader.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct PostHeader: View {
    
    var body: some View {
        
        HStack {
            HStack{
                Image("Profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text("FChiariello")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("More Icon")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader()
    }
}

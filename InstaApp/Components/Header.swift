//
//  Header.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Image("Logo")
                
            Spacer()
            HStack(spacing: 20.0){
                Image("add")
                Image("heart")
                Image("share")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}

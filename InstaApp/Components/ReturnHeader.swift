//
//  ReturnHeader.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 21/11/22.
//

import SwiftUI

struct ReturnHeader: View {
    var body: some View {
        HStack(spacing: 0.0) {
            Spacer()
            Text("#plant")
                .fontWeight(.bold)
            Spacer()
            Image("More Icon")
        }.padding(.horizontal, 16)
            .padding(.vertical, 9)
    }
}

struct ReturnHeader_Previews: PreviewProvider {
    static var previews: some View {
        ReturnHeader()
    }
}

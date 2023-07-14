//
//  Labels.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct Labels: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack(spacing: 8.0){
                Label(text: "IGTV")
                Label(text: "Style")
                Label(text: "Sports")
                Label(text: "Design")
                Label(text: "UI")
                Label(text: "Dogs")
            }
            .padding(.horizontal, 16)
            .frame( height: UIScreen.main.bounds.height / 16)
        }
    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Labels()
    }
}

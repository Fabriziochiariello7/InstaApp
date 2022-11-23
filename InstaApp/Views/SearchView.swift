//
//  SearchView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct SearchView: View {
    @State var text: String
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 10.0) {
                
                SearchInput(text: "")
                
                Labels()
                
                ScrollView(.vertical, showsIndicators: false){
                    Grid()
                }
            }
            
        }
    }
    
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(text: "")
    }
}

//
//  HomeView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0.0){
            Header()
            
            ScrollView(.vertical, showsIndicators: false){
                
                           Stories()
                           
                           Divider()
                           
                           Post()
                           
                           Post(image: "CarPhoto" , description: "This car is really cool!")
                           
            }
        
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

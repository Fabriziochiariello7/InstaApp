//
//  HomeView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Header()
            
            ScrollView(.vertical, showsIndicators: false){
                
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "CarPhoto" , description: "This car is looking really cool!   ")
                
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  ContentView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

struct TabBar: View {
    var body: some View {
        
        VStack(spacing: 0.0){
            Divider()
            
            TabView{
                HomeView()
                    .tabItem{
                        Image("Home")
                    }
                
                SearchView(text: "")
                    .tabItem{
                        Image("Search")
                    }
                
                ReturnView()
                    .tabItem{
                        Image("Reels")
                    }
                
                Image("Shop")
                    .tabItem{
                        Image("Shop")
                    }
                
                Image("Profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
                    .tabItem{
                        Image("TabBarPhoto")
                    }
                
                
            }
            
            
        }
    }
}

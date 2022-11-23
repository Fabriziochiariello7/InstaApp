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
    
    @State var selected = 0
    var body: some View {
        
        VStack(spacing: 0.0){
            Divider()
            
            TabView(selection: $selected){
                HomeView()
                    .tabItem{
                        Image(selected == 0 ? "Home" : "Home2")
                        
                    }
                    .tag(0)
                    
                
                SearchView(text: "")
                    .tabItem{
                        Image(selected == 1 ? "Search2" : "Search")
                    }
                    .tag(1)
                
                Image("Reels")
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

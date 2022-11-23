//
//  Grid.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct Grid: View {
    var images: [String] = ["Photo1", "Photo2", "Photo3", "Photo4", "Photo5", "Photo6", "Photo7", "Photo8", "BigPhoto1"]
    
    var columnGrid: [GridItem] = [GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]
    
    
    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1) {
            ForEach(0...44, id: \.self) {
                Image(images[$0 % images.count])
                    .resizable()
                    .scaledToFill()
                    .frame(width: (UIScreen.main.bounds.width / 3) - 1 , height: (UIScreen.main.bounds.width / 3) - 1)
                
            }
            
             
          
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}

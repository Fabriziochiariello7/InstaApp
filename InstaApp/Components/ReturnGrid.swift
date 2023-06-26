//
//  ReturnGrid.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 21/11/22.
//

import SwiftUI

struct ReturnGrid: View {
    var images: [String] = ["Plant1", "Plant2", "Plant3", "Plant4", "Plant5", "Plant6", "Plant7", "Plant8", "Plant9", "Plant10", "Plant11"]
    
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

struct ReturnGrid_Previews: PreviewProvider {
    static var previews: some View {
        ReturnGrid()
    }
}

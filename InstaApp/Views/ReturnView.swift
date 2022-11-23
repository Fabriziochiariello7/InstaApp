//
//  ReturnView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 21/11/22.
//

import SwiftUI

struct ReturnView: View {
    var body: some View {
      /*  init() {
            let appearance = UINavigationBarAppearance()
            appearance.backButtonAppearance.normal.titlePositionAdjustment =
                UIOffset(horizontal: 40, vertical: 0)

            UINavigationBar.appearance().standardAppearance = appearance
        }
       
       }*/
       
       
        VStack(spacing: 10.0) {
            ReturnHeader()
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                ReturnPostHeader()
                
                Divider()
                
                ReturnGrid()
            }
            
        }
    }
    
}

struct ReturnView_Previews: PreviewProvider {
    static var previews: some View {
        ReturnView()
    }
}






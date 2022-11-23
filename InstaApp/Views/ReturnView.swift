//
//  ReturnView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 21/11/22.
//

import SwiftUI

struct ReturnView: View {
    var body: some View {
      
       
        VStack(spacing: 10.0) {
            ReturnHeader()
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                ReturnPostHeader()
                
                Divider()
                
                ReturnGrid()
            }
            
        }.navigationBarBackButtonHidden(true)
    }
    
}

struct ReturnView_Previews: PreviewProvider {
    static var previews: some View {
        ReturnView()
    }
}






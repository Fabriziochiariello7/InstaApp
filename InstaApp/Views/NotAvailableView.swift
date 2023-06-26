//
//  NotAvailableView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 23/11/22.
//

import SwiftUI

struct NotAvailableView: View {
    //  @Environment(\.presentationMode) var presentation
    var namepage : String
    var body: some View {
        VStack {
            
            Spacer()
            Text("\(namepage)is not available right now, sorry!!")
                .fontWeight(.bold)
            Image("Logo")
            Spacer()
        }
        
    }
}

struct NotAvailableView_Previews: PreviewProvider {
    static var previews: some View {
        NotAvailableView( namepage: "")
    }
}

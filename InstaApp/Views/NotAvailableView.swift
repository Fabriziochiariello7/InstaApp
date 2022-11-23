//
//  NotAvailableView.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 23/11/22.
//

import SwiftUI

struct NotAvailableView: View {
    var body: some View {
        VStack {
            Header()
            Spacer()
            Text("This page is not available right now, sorry!!")
                        .fontWeight(.bold)
            Spacer()
        }
        
    }
}

struct NotAvailableView_Previews: PreviewProvider {
    static var previews: some View {
        NotAvailableView()
    }
}

//
//  Stories.swift
//  InstaApp
//
//  Created by Fabrizio Chiariello on 18/11/22.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false)
        {
            HStack(spacing: 15.0) {
                Story()
                Story(image: "Profile2", name: "Akson")
                Story(image: "Profile3", name: "Steph")
                Story(image: "Profile4", name: "Sam")
                Story(image: "Profile5", name: "Dara")
                Story(image: "Profile6", name: "Brittany")
                Story(image: "Profile7", name: "Pom")
                Story(image: "Profile8", name: "Takashi")
            }
            .padding(.horizontal, 8)
            
        }
        .padding(.vertical, 10)
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}

//
//  TitleText.swift
//  Keychron
//
//  Created by indra on 03/11/22.
//

import SwiftUI

struct TitleText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .padding()
            .foregroundColor(.white)
            .background(Capsule()
                .fill(ColorSet.orangeKC.mainColor)
                .shadow(radius: 3))
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(text: "K2 / 75%")
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}

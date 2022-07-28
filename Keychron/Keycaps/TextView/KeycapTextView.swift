//
//  KeycapTextView.swift
//  Keychron
//
//  Created by Jorge Martinez on 28/07/22.
//

import SwiftUI

struct KeycapTextView: View {
    
    var text: String
    var customSize: CGFloat?
    
    init(text: String, customSize: CGFloat? = nil) {
        self.text = text
        self.customSize = customSize
    }
    
    var body: some View {
        if let customSize = customSize {
            Text(text)
                .foregroundColor(.white)
                .fontWeight(Keycaps.Fonts.weight)
                .font(.system(size: customSize))
        } else {
            Text(text)
                .foregroundColor(.white)
                .fontWeight(Keycaps.Fonts.weight)
                .font(Keycaps.Fonts.mainFont)
        }
    }
}

struct KeycapTextView_Previews: PreviewProvider {
    static var previews: some View {
        KeycapTextView(text: "A")
    }
}

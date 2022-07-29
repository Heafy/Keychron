//
//  KCTextView.swift
//  Keychron
//
//  Created by Jorge Martinez on 28/07/22.
//

import SwiftUI

struct KCTextView: View {
    
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
                .fontWeight(Constants.Fonts.weight)
                .font(.system(size: customSize))
        } else {
            Text(text)
                .foregroundColor(.white)
                .fontWeight(Constants.Fonts.weight)
                .font(Constants.Fonts.mainFont)
        }
    }
}

struct KCTextVieww_Previews: PreviewProvider {
    static var previews: some View {
        KCTextView(text: "A")
    }
}

//
//  SingleKCAlternativeView.swift
//  Keychron
//
//  Created by Jorge Martinez on 28/07/22.
//

import SwiftUI

struct SingleKCAlternativeView: Keycap {
    
    var text: String?
    var symbol: Constants.Symbols
    var colorSet: ColorSet
    var width: CGFloat = Constants.Size.single
    
    init(text: String? = nil, symbol: Constants.Symbols, colorSet: ColorSet) {
        self.text = text
        self.symbol = symbol
        self.colorSet = colorSet
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            SingleKCBackgroundView(colorSet: colorSet)
            
            VStack(spacing: 5) {
                
                Image(symbol.rawValue)
                    .resizable()
                    .frame(width: Constants.Fonts.fontSize, height: Constants.Fonts.fontSize)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                if let text = text {
                    KCTextView(text: text)
                }
            } // VStack
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleKCAlternativeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SingleKCAlternativeView(text: "F1", symbol: .f1, colorSet: .lightGrayKC)
            SingleKCAlternativeView(text: "F8", symbol: .f8, colorSet: .darkGrayKC)
            SingleKCAlternativeView(symbol: .microphone, colorSet: .orangeKC)
        } // VStack
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

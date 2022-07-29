//
//  SingleKeycapAlternativeView.swift
//  Keychron
//
//  Created by Jorge Martinez on 28/07/22.
//

import SwiftUI

struct SingleKeycapAlternativeView: Keycap {
    
    var text: String?
    var symbol: Keycaps.Symbols
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.single
   
    init(text: String? = nil, symbol: Keycaps.Symbols, colorSet: ColorSet) {
        self.text = text
        self.symbol = symbol
        self.colorSet = colorSet
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            SingleKeycapBackgroundView(colorSet: colorSet)
            
            VStack(spacing: 5) {
               
                Image(symbol.rawValue)
                    .resizable()
                    .frame(width: Keycaps.Fonts.fontSize, height: Keycaps.Fonts.fontSize)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(.top, 10)
//
//                KeycapTextView(text: symbol.rawValue)
//                    .padding(.top, 10)
                                
                if let text = text {
                    KeycapTextView(text: text)
                }
            } // VStack

        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleKeycapAlternativeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SingleKeycapAlternativeView(text: "F1", symbol: .f1, colorSet: .lightGrayKeycap)
            SingleKeycapAlternativeView(text: "F8", symbol: .f8, colorSet: .darkGrayKeycap)
            SingleKeycapAlternativeView(symbol: .microphone, colorSet: .orangeKeycap)
        } // VStack
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

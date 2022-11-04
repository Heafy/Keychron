//
//  K2FirstRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2FirstRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "esc", colorSet: .orangeKC)
                SingleKCAlternativeView(text: "F1", symbol: .f1, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F2", symbol: .f2, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F3", symbol: .f3, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F4", symbol: .f4, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F5", symbol: .f5, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F6", symbol: .f5, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F7", symbol: .f7, colorSet: .lightGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCAlternativeView(text: "F8", symbol: .f8, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F9", symbol: .f9, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F10", symbol: .f10, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F11", symbol: .f11, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F12", symbol: .f12, colorSet: .darkGrayKC)
                SingleKCAlternativeView(symbol: .crop, colorSet: .lightGrayKC)
                SingleKCView(text: "del", colorSet: .lightGrayKC)
                SingleKCAlternativeView(symbol: .bulb, colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}

struct K2FirstRowView_Previews: PreviewProvider {
    static var previews: some View {
        K2FirstRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

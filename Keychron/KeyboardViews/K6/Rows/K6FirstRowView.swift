//
//  K6FirstRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 26/08/22.
//

import SwiftUI

struct K6FirstRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "esc", colorSet: .orangeKC)
                SingleKCView(text: "1 !", colorSet: .darkGrayKC)
                SingleKCView(text: "2 @", colorSet: .darkGrayKC)
                SingleKCView(text: "3 #", colorSet: .darkGrayKC)
                SingleKCView(text: "4 $", colorSet: .darkGrayKC)
                SingleKCView(text: "5 %", colorSet: .lightGrayKC)
                SingleKCView(text: "6 ˆ", colorSet: .lightGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "7 &", colorSet: .lightGrayKC)
                SingleKCView(text: "8 *", colorSet: .lightGrayKC)
                SingleKCView(text: "9 (", colorSet: .lightGrayKC)
                SingleKCView(text: "0 )", colorSet: .darkGrayKC)
                SingleKCView(text: "- _", colorSet: .darkGrayKC)
                SingleKCView(text: "= +", colorSet: .darkGrayKC)
                DoubleKCView(text: Constants.Unicode.delete.rawValue, colorSet: .lightGrayKC)
                SingleKCAlternativeView(symbol: .bulb, colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}

struct K6FirstRowView_Previews: PreviewProvider {
    static var previews: some View {
        K6FirstRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

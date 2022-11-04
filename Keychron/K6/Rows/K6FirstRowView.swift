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
                SingleKCView(text: "1 !", bluetoothEnabled: true, colorSet: .lightGrayKC)
                SingleKCView(text: "2 @", bluetoothEnabled: true, colorSet: .lightGrayKC)
                SingleKCView(text: "3 #", bluetoothEnabled: true, colorSet: .lightGrayKC)
                SingleKCView(text: "4 $", colorSet: .lightGrayKC)
                SingleKCView(text: "5 %", colorSet: .darkGrayKC)
                SingleKCView(text: "6 ˆ", colorSet: .darkGrayKC)
                SingleKCView(text: "7 &", colorSet: .darkGrayKC)
            } // HStack
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "8 *", colorSet: .darkGrayKC)
                SingleKCView(text: "9 (", colorSet: .darkGrayKC)
                SingleKCView(text: "0 )", colorSet: .lightGrayKC)
                SingleKCView(text: "- _", colorSet: .lightGrayKC)
                SingleKCView(text: "= +", colorSet: .lightGrayKC)
                DoubleKCView(text: Constants.Unicode.delete.rawValue, colorSet: .darkGrayKC)
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

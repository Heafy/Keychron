//
//  K2SecondRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2SecondRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "` ~", colorSet: .lightGrayKC)
                SingleKCView(text: "1 !", bluetoothEnabled: true, colorSet: .darkGrayKC)
                SingleKCView(text: "2 @", bluetoothEnabled: true, colorSet: .darkGrayKC)
                SingleKCView(text: "3 #", bluetoothEnabled: true, colorSet: .darkGrayKC)
                SingleKCView(text: "4 $", colorSet: .darkGrayKC)
                SingleKCView(text: "5 %", colorSet: .darkGrayKC)
                SingleKCView(text: "6 ˆ", colorSet: .darkGrayKC)
                SingleKCView(text: "7 &", colorSet: .darkGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "8 *", colorSet: .darkGrayKC)
                SingleKCView(text: "9 (", colorSet: .darkGrayKC)
                SingleKCView(text: "0 )", colorSet: .darkGrayKC)
                SingleKCView(text: "- _", colorSet: .darkGrayKC)
                SingleKCView(text: "= +", colorSet: .darkGrayKC)
                DoubleKCView(text: Constants.Unicode.delete.rawValue, colorSet: .lightGrayKC)
                SingleKCView(text: "page\nup", colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}

struct K2SecondRowView_Previews: PreviewProvider {
    static var previews: some View {
        K2SecondRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

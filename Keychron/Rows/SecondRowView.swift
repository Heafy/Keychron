//
//  SecondRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct SecondRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "` ~", colorSet: .darkGrayKC)
                SingleKCView(text: "1 !", bluetoothEnabled: true, colorSet: .lightGrayKC)
                SingleKCView(text: "2 @", bluetoothEnabled: true, colorSet: .lightGrayKC)
                SingleKCView(text: "3 #", bluetoothEnabled: true, colorSet: .lightGrayKC)
                SingleKCView(text: "4 $", colorSet: .lightGrayKC)
                SingleKCView(text: "5 %", colorSet: .lightGrayKC)
                SingleKCView(text: "6 ˆ", colorSet: .lightGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "7 &", colorSet: .lightGrayKC)
                SingleKCView(text: "8 *", colorSet: .lightGrayKC)
                SingleKCView(text: "9 (", colorSet: .lightGrayKC)
                SingleKCView(text: "0 )", colorSet: .lightGrayKC)
                SingleKCView(text: "- _", colorSet: .lightGrayKC)
                SingleKCView(text: "= +", colorSet: .lightGrayKC)
                DoubleKCView(text: Constants.Unicode.delete.rawValue, colorSet: .darkGrayKC)
            } // HStack
            
            Spacer().frame(width: Constants.Dimensions.sectorSpacing)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "ins", colorSet: .darkGrayKC)
                SingleKCView(text: "home", colorSet: .darkGrayKC)
                SingleKCView(text: "pgup", colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}

struct SecondRowView_Previews: PreviewProvider {
    static var previews: some View {
        SecondRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  K12FirstRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K12FirstRowView: View {
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
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "7 &", colorSet: .darkGrayKC)
                SingleKCView(text: "8 *", colorSet: .darkGrayKC)
                SingleKCView(text: "9 (", colorSet: .darkGrayKC)
                SingleKCView(text: "0 )", colorSet: .lightGrayKC)
                SingleKCView(text: "- _", colorSet: .lightGrayKC)
                SingleKCView(text: "= +", colorSet: .lightGrayKC)
                DoubleKCView(text: Constants.Unicode.delete.rawValue, colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}

struct K12FirstRowView_Previews: PreviewProvider {
    static var previews: some View {
        K12FirstRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

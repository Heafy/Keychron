//
//  K12SecondRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K12SecondRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleHalfKCView(text: "tab", colorSet: .lightGrayKC)
                SingleKCView(text: "Q", bluetoothEnabled: true, colorSet: .darkGrayKC)
                SingleKCView(text: "W", bluetoothEnabled: true, colorSet: .darkGrayKC)
                SingleKCView(text: "E", bluetoothEnabled: true, colorSet: .darkGrayKC)
                SingleKCView(text: "R", colorSet: .darkGrayKC)
                SingleKCView(text: "T", colorSet: .darkGrayKC)
                SingleKCView(text: "Y", colorSet: .darkGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "U", colorSet: .darkGrayKC)
                SingleKCView(text: "I", colorSet: .darkGrayKC)
                SingleKCView(text: "O", colorSet: .darkGrayKC)
                SingleKCView(text: "P", colorSet: .darkGrayKC)
                SingleKCView(text: "[{", colorSet: .darkGrayKC)
                SingleKCView(text: "]}", colorSet: .darkGrayKC)
                SingleHalfKCView(text: "\\ |", colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}

struct K12SecondRowView_Previews: PreviewProvider {
    static var previews: some View {
        K12SecondRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

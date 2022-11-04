//
//  K2SixthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2SixthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleQuarterKCView(text: "control", colorSet: .lightGrayKC)
                SingleQuarterKCView(text: "option", symbol: .option ,colorSet: .lightGrayKC)
                SingleQuarterKCView(text: "command", symbol: .command  ,colorSet: .lightGrayKC)
                SpacebarKCView(colorSet: .darkGrayKC)
                SingleKCView(text: Constants.Unicode.command.rawValue, colorSet: .lightGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "fn", colorSet: .lightGrayKC)
                SingleKCView(text: "control", colorSet: .lightGrayKC)
                SingleKCView(text: "←", colorSet: .darkGrayKC)
                SingleKCView(text: "↓", colorSet: .darkGrayKC)
                SingleKCView(text: "→", colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}

struct K2SixthRowView_Previews: PreviewProvider {
    static var previews: some View {
        K2SixthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

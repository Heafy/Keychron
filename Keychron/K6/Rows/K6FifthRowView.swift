//
//  K6FifthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/08/22.
//

import SwiftUI

struct K6FifthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleQuarterKCView(text: "control", colorSet: .darkGrayKC)
                SingleQuarterKCView(text: "option", symbol: .option ,colorSet: .darkGrayKC)
                SingleQuarterKCView(text: "command", symbol: .command  ,colorSet: .darkGrayKC)
                SpacebarKCView(colorSet: .lightGrayKC)
                SingleKCView(text: Constants.Unicode.command.rawValue, colorSet: .lightGrayKC)
            } // HStack            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "fn1", colorSet: .lightGrayKC)
                SingleKCView(text: "fn2", colorSet: .lightGrayKC)
                SingleKCView(text: "←", colorSet: .lightGrayKC)
                SingleKCView(text: "↓", colorSet: .lightGrayKC)
                SingleKCView(text: "→", colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}

struct K6FifthView_Previews: PreviewProvider {
    static var previews: some View {
        K6FifthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

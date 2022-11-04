//
//  K8SixthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct K8SixthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleQuarterKCView(text: "control", colorSet: .darkGrayKC)
                SingleQuarterKCView(text: "option", symbol: .option ,colorSet: .darkGrayKC)
                SingleQuarterKCView(text: "command", symbol: .command  ,colorSet: .darkGrayKC)
                SpacebarKCView(colorSet: .lightGrayKC)
                SingleQuarterKCView(symbol: .command, colorSet: .darkGrayKC)
                SingleQuarterKCView(text: "option", colorSet: .darkGrayKC)
                SingleQuarterKCView(text: "fn", colorSet: .darkGrayKC)
                SingleQuarterKCView(text: "control", colorSet: .darkGrayKC)
            } // HStack
            
            Spacer().frame(width: Constants.Dimensions.sectorSpacing)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "←", colorSet: .lightGrayKC)
                SingleKCView(text: "↓", colorSet: .lightGrayKC)
                SingleKCView(text: "→", colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}

struct SixthRowView_Previews: PreviewProvider {
    static var previews: some View {
        K8SixthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  K12FifthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K12FifthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleQuarterKCView(text: "control", colorSet: .lightGrayKC)
                SingleQuarterKCView(text: "option", symbol: .option ,colorSet: .lightGrayKC)
                SingleQuarterKCView(text: "command", symbol: .command  ,colorSet: .lightGrayKC)
                SpacebarKCView(colorSet: .darkGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleQuarterKCView(text: Constants.Unicode.command.rawValue, colorSet: .lightGrayKC)
                SingleQuarterKCView(text: "fn1", colorSet: .lightGrayKC)
                SingleQuarterKCView(text: "fn2", colorSet: .lightGrayKC)
                SingleQuarterKCView(text: "control", colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}
struct K12FifthRowView_Previews: PreviewProvider {
    static var previews: some View {
        K12FifthRowView()
    }
}

//
//  K2FourthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2FourthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleThreeQuarterKCView(text: "caps", colorSet: .lightGrayKC)
                SingleKCView(text: "A", colorSet: .darkGrayKC)
                SingleKCView(text: "S", colorSet: .darkGrayKC)
                SingleKCView(text: "D", colorSet: .darkGrayKC)
                SingleKCView(text: "F", colorSet: .darkGrayKC)
                SingleKCView(text: "G", colorSet: .darkGrayKC)
                SingleKCView(text: "H", colorSet: .darkGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "J", colorSet: .darkGrayKC)
                SingleKCView(text: "K", colorSet: .darkGrayKC)
                SingleKCView(text: "L", colorSet: .darkGrayKC)
                SingleKCView(text: "; :", colorSet: .darkGrayKC)
                SingleKCView(text: "' \"", colorSet: .darkGrayKC)
                DoubleQuarterKCView(text: "↵", colorSet: .lightGrayKC)
                SingleKCView(text: "home", colorSet: .lightGrayKC)
            } // HStack
        }  // HStack
    }
}
struct K2FourthRowView_Previews: PreviewProvider {
    static var previews: some View {
        K2FourthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

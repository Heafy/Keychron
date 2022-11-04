//
//  K2FifthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2FifthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                DoubleQuarterKCView(text: "shift", colorSet: .lightGrayKC)
                SingleKCView(text: "Z", colorSet: .darkGrayKC)
                SingleKCView(text: "X", colorSet: .darkGrayKC)
                SingleKCView(text: "C", colorSet: .darkGrayKC)
                SingleKCView(text: "V", colorSet: .darkGrayKC)
                SingleKCView(text: "B", colorSet: .darkGrayKC)
                SingleKCView(text: "N", colorSet: .darkGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "M", colorSet: .darkGrayKC)
                SingleKCView(text: ", <", colorSet: .darkGrayKC)
                SingleKCView(text: ". >", colorSet: .darkGrayKC)
                SingleKCView(text: "/ ?", colorSet: .darkGrayKC)
                SingleThreeQuarterKCView(text: "shift", colorSet: .lightGrayKC)
                SingleKCView(text: "↑", colorSet: .darkGrayKC)
                SingleKCView(text: "end", colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}
struct K2FifthRowView_Previews: PreviewProvider {
    static var previews: some View {
        K2FifthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

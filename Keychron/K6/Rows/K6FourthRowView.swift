//
//  K6FourthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/08/22.
//

import SwiftUI

struct K6FourthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                DoubleQuarterKCView(text: "shift", colorSet: .darkGrayKC)
                SingleKCView(text: "Z", colorSet: .lightGrayKC)
                SingleKCView(text: "X", colorSet: .lightGrayKC)
                SingleKCView(text: "C", colorSet: .lightGrayKC)
                SingleKCView(text: "V", colorSet: .lightGrayKC)
                SingleKCView(text: "B", colorSet: .lightGrayKC)
                SingleKCView(text: "N", colorSet: .lightGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "M", colorSet: .lightGrayKC)
                SingleKCView(text: ", <", colorSet: .lightGrayKC)
                SingleKCView(text: ". >", colorSet: .lightGrayKC)
                SingleKCView(text: "/ ?", colorSet: .lightGrayKC)
                SingleThreeQuarterKCView(text: "shift", colorSet: .darkGrayKC)
                SingleKCView(text: "↑", colorSet: .lightGrayKC)
                SingleKCView(text: "pgdn", colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}


struct K6FourthView_Previews: PreviewProvider {
    static var previews: some View {
        K6FourthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

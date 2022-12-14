//
//  K8FifthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct K8FifthRowView: View {
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
                DoubleThreeQuarterKCView(text: "shift", colorSet: .darkGrayKC)
            } // HStack
            
            Spacer().frame(width: Constants.Dimensions.sectorSpacing)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                Spacer().frame(width: Constants.Size.single)
                SingleKCView(text: "↑", colorSet: .lightGrayKC)
                Spacer().frame(width: Constants.Size.single)
            } // HStack
        } // HStack
    }
}

struct FifthRowView_Previews: PreviewProvider {
    static var previews: some View {
        K8FifthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

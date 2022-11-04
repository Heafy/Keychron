//
//  K8FourthRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct K8FourthRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleThreeQuarterKCView(text: "caps", colorSet: .darkGrayKC)
                SingleKCView(text: "A", colorSet: .lightGrayKC)
                SingleKCView(text: "S", colorSet: .lightGrayKC)
                SingleKCView(text: "D", colorSet: .lightGrayKC)
                SingleKCView(text: "F", colorSet: .lightGrayKC)
                SingleKCView(text: "G", colorSet: .lightGrayKC)
                SingleKCView(text: "H", colorSet: .lightGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "J", colorSet: .lightGrayKC)
                SingleKCView(text: "K", colorSet: .lightGrayKC)
                SingleKCView(text: "L", colorSet: .lightGrayKC)
                SingleKCView(text: "; :", colorSet: .lightGrayKC)
                SingleKCView(text: "' \"", colorSet: .lightGrayKC)
                DoubleQuarterKCView(text: "↵", colorSet: .darkGrayKC)
            } // HStack
            
            Spacer().frame(width: Constants.Dimensions.sectorSpacing)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                LightIndicatorView(option: .energy)
                LightIndicatorView(option: .bluetooth)
                LightIndicatorView(option: .caps)
            } // HStack
        }  // HStack
    }
}

struct FourthRowView_Previews: PreviewProvider {
    static var previews: some View {
        K8FourthRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

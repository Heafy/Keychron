//
//  K6ThirdRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/08/22.
//

import SwiftUI

struct K6ThirdRowView: View {
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
                SingleKCView(text: "pgup", colorSet: .darkGrayKC)
            } // HStack
        }  // HStack
    }
}

struct K6ThirdRowView_Previews: PreviewProvider {
    static var previews: some View {
        K6ThirdRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

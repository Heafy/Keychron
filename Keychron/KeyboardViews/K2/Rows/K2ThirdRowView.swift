//
//  K2ThirdRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2ThirdRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleHalfKCView(text: "tab", colorSet: .lightGrayKC)
                SingleKCView(text: "Q", colorSet: .darkGrayKC)
                SingleKCView(text: "W", colorSet: .darkGrayKC)
                SingleKCView(text: "E", colorSet: .darkGrayKC)
                SingleKCView(text: "R", colorSet: .darkGrayKC)
                SingleKCView(text: "T", colorSet: .darkGrayKC)
                SingleKCView(text: "Y", colorSet: .darkGrayKC)
                SingleKCView(text: "U", colorSet: .darkGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "I", colorSet: .darkGrayKC)
                SingleKCView(text: "O", colorSet: .darkGrayKC)
                SingleKCView(text: "P", colorSet: .darkGrayKC)
                SingleKCView(text: "[{", colorSet: .darkGrayKC)
                SingleKCView(text: "]}", colorSet: .darkGrayKC)
                SingleHalfKCView(text: "\\ |", colorSet: .lightGrayKC)
                SingleKCView(text: "page\ndown", colorSet: .lightGrayKC)
            } // HStack
        } // HStack
    }
}

struct K2ThirdRowView_Previews: PreviewProvider {
    static var previews: some View {
        K2ThirdRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

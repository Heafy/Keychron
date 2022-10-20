//
//  K6SecondRowView.swift
//  Keychron
//
//  Created by indra on 27/08/22.
//

import SwiftUI

struct K6SecondRowView: View {
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleHalfKCView(text: "tab", colorSet: .darkGrayKC)
                SingleKCView(text: "Q", colorSet: .lightGrayKC)
                SingleKCView(text: "W", colorSet: .lightGrayKC)
                SingleKCView(text: "E", colorSet: .lightGrayKC)
                SingleKCView(text: "R", colorSet: .lightGrayKC)
                SingleKCView(text: "T", colorSet: .lightGrayKC)
                SingleKCView(text: "Y", colorSet: .lightGrayKC)
                SingleKCView(text: "U", colorSet: .lightGrayKC)
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "I", colorSet: .lightGrayKC)
                SingleKCView(text: "O", colorSet: .lightGrayKC)
                SingleKCView(text: "P", colorSet: .lightGrayKC)
                SingleKCView(text: "[{", colorSet: .lightGrayKC)
                SingleKCView(text: "]}", colorSet: .lightGrayKC)
                SingleHalfKCView(text: "\\ |", colorSet: .darkGrayKC)
                SingleKCView(text: "home", colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}

struct K6SecondRowView_Previews: PreviewProvider {
    static var previews: some View {
        K6SecondRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  ThirdRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct ThirdRowView: View {
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
            } // HStack
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "U", colorSet: .lightGrayKC)
                SingleKCView(text: "I", colorSet: .lightGrayKC)
                SingleKCView(text: "O", colorSet: .lightGrayKC)
                SingleKCView(text: "P", colorSet: .lightGrayKC)
                SingleKCView(text: "[{", colorSet: .lightGrayKC)
                SingleKCView(text: "]}", colorSet: .lightGrayKC)
                SingleHalfKCView(text: "\\ |", colorSet: .darkGrayKC)
            } // HStack
            
            Spacer().frame(width: Constants.Dimensions.sectorSpacing)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCView(text: "del", colorSet: .darkGrayKC)
                SingleKCView(text: "end", colorSet: .darkGrayKC)
                SingleKCView(text: "pgdn", colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}

struct ThirdRowView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

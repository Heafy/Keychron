//
//  SecondRowKeycapsView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct SecondRowKeycapsView: View {
    var body: some View {
        HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleHalfKeycapView(text: "tab", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "Q", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "W", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "E", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "R", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "T", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "Y", colorSet: .lightGrayKeycap)
            } // HStack
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "U", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "I", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "O", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "P", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "[{", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "]}", colorSet: .lightGrayKeycap)
                SingleHalfKeycapView(text: "\\ |", colorSet: .darkGrayKeycap)
            } // HStack
            
            Spacer().frame(width: Keycaps.Dimensions.sectorSpacing)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "del", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "end", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "pgdn", colorSet: .darkGrayKeycap)
            } // HStack
        } // HStack
    }
}

struct SecondRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        SecondRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

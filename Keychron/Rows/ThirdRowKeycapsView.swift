//
//  ThirdRowKeycapsView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct ThirdRowKeycapsView: View {
    var body: some View {
        HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleThreeQuarterKeycapView(text: "caps", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "A", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "S", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "D", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "G", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "H", colorSet: .lightGrayKeycap)
            } // HStack
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "J", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "K", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "L", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "; :", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "' \"", colorSet: .lightGrayKeycap)
                DoubleQuarterKeycapView(text: "↵", colorSet: .darkGrayKeycap)
            } // HStack
        }  // HStack
    }
}

struct ThirdRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

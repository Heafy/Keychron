//
//  FourthRowKeycapsView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct FourthRowKeycapsView: View {
    var body: some View {
        HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                DoubleQuarterKeycapView(text: "shift", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "Z", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "X", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "C", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "V", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "B", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "N", colorSet: .lightGrayKeycap)
            } // HStack
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "M", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: ", <", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: ". >", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "/ ?", colorSet: .lightGrayKeycap)
                DoubleThreeQuarterKeycapView(text: "shift", colorSet: .darkGrayKeycap)
            } // HStack
            
            Spacer().frame(width: Keycaps.Dimensions.sectorSpacing)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                Spacer().frame(width: Keycaps.Size.single)
                SingleKeycapView(text: "↑", colorSet: .lightGrayKeycap)
                Spacer().frame(width: Keycaps.Size.single)
            } // HStack
        } // HStack
    }
}

struct FourthRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        FourthRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

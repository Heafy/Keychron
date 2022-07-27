//
//  FifthRowKeycapsView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct FifthRowKeycapsView: View {
    var body: some View {
        HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleQuarterKeycapView(text: "control", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "option", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "command", colorSet: .darkGrayKeycap)
                SpacebarKeycapView()
                SingleQuarterKeycapView(text: "J", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "option", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "fn", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "control", colorSet: .darkGrayKeycap)
            } //: HStack
            
            Spacer().frame(width: Keycaps.Dimensions.sectorSpacing)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "←", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "↓", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "→", colorSet: .lightGrayKeycap)
            } //: HStack
        } //: HStack
    }
}

struct FifthRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        FifthRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

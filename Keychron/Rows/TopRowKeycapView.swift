//
//  TopRowKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct TopRowKeycapView: View {
    
    private let firstSpacer: CGFloat = 47
    private let secondSpacer: CGFloat = 36
    
    var body: some View {
        HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
            
            SingleKeycapView(text: "esc", colorSet: .orangeKeycap)
            
            Spacer().frame(width: firstSpacer)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapAlternativeView(text: "F1", symbol: .f1, colorSet: .lightGrayKeycap)
                SingleKeycapAlternativeView(text: "F2", symbol: .f2, colorSet: .lightGrayKeycap)
                SingleKeycapAlternativeView(text: "F3", symbol: .f3, colorSet: .lightGrayKeycap)
                SingleKeycapAlternativeView(text: "F4", symbol: .f4, colorSet: .lightGrayKeycap)
            } // HStack
            
            Spacer().frame(width: secondSpacer)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapAlternativeView(text: "F5", symbol: .f5, colorSet: .darkGrayKeycap)
                SingleKeycapAlternativeView(text: "F6", symbol: .f5, colorSet: .darkGrayKeycap)
                SingleKeycapAlternativeView(text: "F7", symbol: .f7, colorSet: .darkGrayKeycap)
                SingleKeycapAlternativeView(text: "F8", symbol: .f8, colorSet: .darkGrayKeycap)
            } // HStack
            
            Spacer().frame(width: secondSpacer)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapAlternativeView(text: "F9", symbol: .f9, colorSet: .lightGrayKeycap)
                SingleKeycapAlternativeView(text: "F10", symbol: .f10, colorSet: .lightGrayKeycap)
                SingleKeycapAlternativeView(text: "F11", symbol: .f11, colorSet: .lightGrayKeycap)
                SingleKeycapAlternativeView(text: "F12", symbol: .f12, colorSet: .lightGrayKeycap)
                
            } // HStack
            
            Spacer().frame(width: Keycaps.Dimensions.sectorSpacing)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapAlternativeView(symbol: .crop, colorSet: .darkGrayKeycap)
                SingleKeycapAlternativeView(symbol: .microphone, colorSet: .darkGrayKeycap)
                SingleKeycapAlternativeView(symbol: .bulb, colorSet: .darkGrayKeycap)
            } // HStack
        } // HStack
    }
}

struct TopRowKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        TopRowKeycapView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

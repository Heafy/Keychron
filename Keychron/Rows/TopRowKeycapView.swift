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
                SingleKeycapView(text: "F1", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F2", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F3", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F4", colorSet: .lightGrayKeycap)
                
            } //: HStack
            
            Spacer().frame(width: secondSpacer)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "F5", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "F6", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "F7", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "F8", colorSet: .darkGrayKeycap)
                
            } //: HStack
            
            Spacer().frame(width: secondSpacer)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "F9", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F10", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F11", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F12", colorSet: .lightGrayKeycap)
                
            } //: HStack
            
            Spacer().frame(width: Keycaps.Dimensions.sectorSpacing)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "a", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "a", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "a", colorSet: .lightGrayKeycap)
            } //: HStack
        } //: HStack
    }
}

struct TopRowKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        TopRowKeycapView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

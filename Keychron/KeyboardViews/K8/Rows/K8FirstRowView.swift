//
//  K8FirstRowView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct K8FirstRowView: View {
    
    private let firstSpacer: CGFloat = 47
    private let secondSpacer: CGFloat = 36
    
    var body: some View {
        HStack(spacing: Constants.Dimensions.horizontalSpacing) {
            
            SingleKCView(text: "esc", colorSet: .orangeKC)
            
            Spacer().frame(width: firstSpacer)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCAlternativeView(text: "F1", symbol: .f1, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F2", symbol: .f2, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F3", symbol: .f3, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F4", symbol: .f4, colorSet: .lightGrayKC)
            } // HStack
            
            Spacer().frame(width: secondSpacer)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCAlternativeView(text: "F5", symbol: .f5, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F6", symbol: .f5, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F7", symbol: .f7, colorSet: .darkGrayKC)
                SingleKCAlternativeView(text: "F8", symbol: .f8, colorSet: .darkGrayKC)
            } // HStack
            
            Spacer().frame(width: secondSpacer)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCAlternativeView(text: "F9", symbol: .f9, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F10", symbol: .f10, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F11", symbol: .f11, colorSet: .lightGrayKC)
                SingleKCAlternativeView(text: "F12", symbol: .f12, colorSet: .lightGrayKC)
                
            } // HStack
            
            Spacer().frame(width: Constants.Dimensions.sectorSpacing)
            
            HStack(spacing: Constants.Dimensions.horizontalSpacing) {
                SingleKCAlternativeView(symbol: .crop, colorSet: .darkGrayKC)
                SingleKCAlternativeView(symbol: .microphone, colorSet: .darkGrayKC)
                SingleKCAlternativeView(symbol: .bulb, colorSet: .darkGrayKC)
            } // HStack
        } // HStack
    }
}

struct FirstRowView_Previews: PreviewProvider {
    static var previews: some View {
        K8FirstRowView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

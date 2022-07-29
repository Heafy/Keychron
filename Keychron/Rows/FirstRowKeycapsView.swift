//
//  FirstRowKeycapsView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct FirstRowKeycapsView: View {
    var body: some View {
        HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "` ~", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "1 !", bluetoothEnabled: true, colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "2 @", bluetoothEnabled: true, colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "3 #", bluetoothEnabled: true, colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "4 $", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "5 %", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "6 ˆ", colorSet: .lightGrayKeycap)
            } // HStack
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "7 &", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "8 *", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "9 (", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "0 )", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "- _", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "= +", colorSet: .lightGrayKeycap)
                DoubleKeycapView(text: Keycaps.Unicode.delete.rawValue, colorSet: .darkGrayKeycap)
            } // HStack
            
            Spacer().frame(width: Keycaps.Dimensions.sectorSpacing)
            
            HStack(spacing: Keycaps.Dimensions.horizontalSpacing) {
                SingleKeycapView(text: "ins", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "home", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "pgup", colorSet: .darkGrayKeycap)
            } // HStack
        } // HStack
    }
}

struct FirstRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

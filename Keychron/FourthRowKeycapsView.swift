//
//  FourthRowKeycapsView.swift
//  Keychron
//
//  Created by indra on 27/07/22.
//

import SwiftUI

struct FourthRowKeycapsView: View {
    var body: some View {
        HStack(spacing: 0.5) {
            HStack(spacing: 0.5) {
                DoubleQuarterKeycapView(text: "shift", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "Z", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "X", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "C", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "V", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "B", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "N", colorSet: .lightGrayKeycap)
            }
            
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "M", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: ", <", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: ". >", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "/ ?", colorSet: .lightGrayKeycap)
                DoubleThreeQuarterKeycapView(text: "shift", colorSet: .darkGrayKeycap)
            }
            
            Spacer()
                    .frame(width: 15)
            
            HStack(spacing: 0.5) {
                Spacer().frame(width: Keycaps.Size.single)
                SingleKeycapView(text: "↑", colorSet: .lightGrayKeycap)
                Spacer().frame(width: Keycaps.Size.single)
            }
            
        }
    }
}

struct FourthRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        FourthRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

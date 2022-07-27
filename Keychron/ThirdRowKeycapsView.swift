//
//  ThirdRowKeycapsView.swift
//  Keychron
//
//  Created by indra on 27/07/22.
//

import SwiftUI

struct ThirdRowKeycapsView: View {
    var body: some View {
        HStack(spacing: 0.5) {
            HStack(spacing: 0.5) {
                SingleThreeQuarterKeycapView(text: "caps", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "A", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "S", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "D", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "G", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "H", colorSet: .lightGrayKeycap)
            }
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "J", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "K", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "L", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "; :", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "' \"", colorSet: .lightGrayKeycap)
                DoubleQuarterKeycapView(text: "↵", colorSet: .darkGrayKeycap)
            }
        }
    }
}

struct ThirdRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

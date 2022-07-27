//
//  FifthRowKeycapsView.swift
//  Keychron
//
//  Created by indra on 27/07/22.
//

import SwiftUI

struct FifthRowKeycapsView: View {
    var body: some View {
        HStack(spacing: 0.5) {
            
            HStack(spacing: 0.5) {
                SingleQuarterKeycapView(text: "control", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "option", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "command", colorSet: .darkGrayKeycap)
                SpacebarKeycapView()
                SingleQuarterKeycapView(text: "J", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "option", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "fn", colorSet: .darkGrayKeycap)
                SingleQuarterKeycapView(text: "control", colorSet: .darkGrayKeycap)
            }
            
            Spacer()
                    .frame(width: 15)
            
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "←", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "↓", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "→", colorSet: .lightGrayKeycap)
            }
            
        }
    }
}

struct FifthRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        FifthRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

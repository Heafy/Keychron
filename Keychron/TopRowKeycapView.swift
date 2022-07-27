//
//  TopRowKeycapView.swift
//  Keychron
//
//  Created by indra on 27/07/22.
//

import SwiftUI

struct TopRowKeycapView: View {
    var body: some View {
        HStack(spacing: 0.5) {
            SingleKeycapView(text: "esc", colorSet: .orangeKeycap)
            Spacer()
                    .frame(width: 47)
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "F1", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F2", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F3", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F4", colorSet: .lightGrayKeycap)

            }
            Spacer()
                    .frame(width: 36)
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "F5", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "F6", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "F7", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "F8", colorSet: .darkGrayKeycap)

            }
            Spacer()
                    .frame(width: 36)
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "F9", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F10", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F11", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "F12", colorSet: .lightGrayKeycap)

            }
            
            Spacer()
                    .frame(width: 15)
            
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "a", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "a", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "a", colorSet: .lightGrayKeycap)
            }
            
        }
    }
}

struct TopRowKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        TopRowKeycapView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

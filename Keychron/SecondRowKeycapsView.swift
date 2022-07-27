//
//  SecondRowKeycapsView.swift
//  Keychron
//
//  Created by indra on 27/07/22.
//

import SwiftUI

struct SecondRowKeycapsView: View {
    var body: some View {
        HStack(spacing: 0.5) {
            HStack(spacing: 0.5) {
                SingleHalfKeycapView(text: "tab", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "Q", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "W", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "E", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "R", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "T", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "Y", colorSet: .lightGrayKeycap)
            }
            
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "U", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "I", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "O", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "P", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "[{", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "]}", colorSet: .lightGrayKeycap)
                SingleHalfKeycapView(text: "\\ |", colorSet: .darkGrayKeycap)
            }
            
            Spacer()
                    .frame(width: 15)
            
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "del", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "end", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "pgdn", colorSet: .lightGrayKeycap)
            }
        }
    }
}

struct SecondRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        SecondRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  FirstRowKeycapsView.swift
//  Keychron
//
//  Created by indra on 27/07/22.
//

import SwiftUI

struct FirstRowKeycapsView: View {
    var body: some View {
        HStack(spacing: 0.5) {
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "` ~", colorSet: .darkGrayKeycap)
                SingleKeycapView(text: "1 !", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "2 @", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "3 #", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "4 $", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "5 %", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "6 ˆ", colorSet: .lightGrayKeycap)
            }
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "7 &", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "8 *", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "9 (", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "0 )", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "- _", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "= +", colorSet: .lightGrayKeycap)
                DoubleKeycapView(text: "←", colorSet: .darkGrayKeycap)
            }
            
            Spacer()
                    .frame(width: 15)
            
            HStack(spacing: 0.5) {
                SingleKeycapView(text: "ins", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "home", colorSet: .lightGrayKeycap)
                SingleKeycapView(text: "pgup", colorSet: .lightGrayKeycap)
            }
        }
    }
}

struct FirstRowKeycapsView_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowKeycapsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

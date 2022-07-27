//
//  TestView.swift
//  Keychron
//
//  Created by Jorge Martinez on 27/07/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        Button(action: {
            print()
        }, label: {
            VStack(alignment: .leading) {
                HStack() {
                    SingleKeycapView(text: "Q", colorSet: .lightGrayKeycap)
                    SingleKeycapView(text: "W", colorSet: .darkGrayKeycap)
                    SingleKeycapView(text: "E", colorSet: .orangeKeycap)
                }
                HStack {
                    SingleQuarterKeycapView(text: "control", colorSet: .lightGrayKeycap)
                    SingleQuarterKeycapView(text: "tab", colorSet: .darkGrayKeycap)
                    SingleQuarterKeycapView(text: "command" , colorSet: .orangeKeycap)
                }
                HStack{
                    SingleHalfKeycapView(text: "tab", colorSet: .lightGrayKeycap)
                    SingleHalfKeycapView(text: "tab", colorSet: .darkGrayKeycap)
                    SingleHalfKeycapView(text: "tab", colorSet: .orangeKeycap)
                }
                HStack {
                    SingleThreeQuarterKeycapView(text: "tab", colorSet: .lightGrayKeycap)
                    SingleThreeQuarterKeycapView(text: "tab", colorSet: .darkGrayKeycap)
                    SingleThreeQuarterKeycapView(text: "tab", colorSet: .orangeKeycap)
                }
                HStack {
                    DoubleKeycapView(text: "del", colorSet: .lightGrayKeycap)
                    DoubleKeycapView(text: "del", colorSet: .darkGrayKeycap)
                    DoubleKeycapView(text: "del", colorSet: .orangeKeycap)
                }
                HStack {
                    DoubleQuarterKeycapView(text: "esc", colorSet: .lightGrayKeycap)
                    DoubleQuarterKeycapView(text: "esc", colorSet: .darkGrayKeycap)
                    DoubleQuarterKeycapView(text: "esc", colorSet: .orangeKeycap)
                }
                HStack {
                    DoubleThreeQuarterKeycapView(text: "tab", colorSet: .lightGrayKeycap)
                    DoubleThreeQuarterKeycapView(text: "tab", colorSet: .darkGrayKeycap)
                    DoubleThreeQuarterKeycapView(text: "tab", colorSet: .orangeKeycap)
                }
                HStack {
                    SpacebarKeycapView()
                }
            }
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

//
//  SingleKeyCapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct SingleKeyCapView: View {
    
    var size: CGFloat = 60
    var colorSet: ColorSet
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: size, height: size)
                .cornerRadius(10)

                Trapezoid(percent: 10, leftOffSet: 1, rightOffset: 7)
                    .fill(colorSet.leftColor)
                    .frame(width: size, height: size * 0.20)
                    .rotationEffect(.degrees(90))
                    .offset(x: -(size * 0.40), y: (size * 0.40))

            Trapezoid(percent: 10, leftOffSet: 7, rightOffset: 1)
                .fill(colorSet.rightColor)
                .frame(width: size, height: size * 0.20)
                .rotationEffect(.degrees(-90))
                .offset(x: (size * 0.40), y: (size * 0.40))

            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: size * 0.75, height: size * 0.75)
                .cornerRadius(4)
                .padding(5)

            Text("A")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: size * 0.40))
                .padding(.top, 5)
        }
        .frame(width: size, height: size)
        .cornerRadius(10)
            
    }
}

struct SingleKeyCapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 0) {
            HStack(spacing: 0) {
                SingleKeyCapView(colorSet: .lightGrayKeycap)
                SingleKeyCapView(colorSet: .darkGrayKeycap)
                SingleKeyCapView(colorSet: .orangeKeycap)
                SingleKeyCapView(colorSet: .lightGrayKeycap)
                SingleKeyCapView(colorSet: .darkGrayKeycap)
                SingleKeyCapView(colorSet: .orangeKeycap)
                SingleKeyCapView(colorSet: .lightGrayKeycap)
                SingleKeyCapView(colorSet: .darkGrayKeycap)
                SingleKeyCapView(colorSet: .orangeKeycap)
            }
            HStack(spacing: 0) {
                SingleKeyCapView(colorSet: .lightGrayKeycap)
                SingleKeyCapView(colorSet: .darkGrayKeycap)
                SingleKeyCapView(colorSet: .orangeKeycap)
                SingleKeyCapView(colorSet: .lightGrayKeycap)
                SingleKeyCapView(colorSet: .darkGrayKeycap)
                SingleKeyCapView(colorSet: .orangeKeycap)
                SingleKeyCapView(colorSet: .lightGrayKeycap)
                SingleKeyCapView(colorSet: .darkGrayKeycap)
                SingleKeyCapView(colorSet: .orangeKeycap)
            }
            
        }
        .previewInterfaceOrientation(.landscapeLeft)
    }
}

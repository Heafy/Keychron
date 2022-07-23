//
//  DoubleThreeQuarterKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 22/07/22.
//

import SwiftUI

struct DoubleThreeQuarterKeycapView: Keycap {
    
    var text: String
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.doubleThreeQuarter
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 15, leftOffSet: -4, rightOffset: 7)
                .fill(colorSet.leftColor)
                .frame(width: height * 1.1, height: 25)
                .rotationEffect(.degrees(90))
                .offset(x: -(width/2.2), y: (height/3))
    
            Trapezoid(percent: 15, leftOffSet: 7, rightOffset: -4)
                .fill(colorSet.leftColor)
                .frame(width: height * 1.1, height: 25)
                .rotationEffect(.degrees(-90))
                .offset(x: (width/2.2), y: (height/3))

            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: width * 0.80, height: height * 0.75)
                .cornerRadius(4)
                .padding(5)

            VStack(spacing: 0) {
                Text(text)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(Keycaps.Fonts.mainFont)
                    .padding(.top, 5)
            } // VStack
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}
struct DoubleThreeQuarterKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            DoubleThreeQuarterKeycapView(text: "1", colorSet: .lightGrayKeycap)
            DoubleThreeQuarterKeycapView(text: "2", colorSet: .darkGrayKeycap)
            DoubleThreeQuarterKeycapView(text: "3", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

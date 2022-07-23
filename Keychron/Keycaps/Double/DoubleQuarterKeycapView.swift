//
//  DoubleQuarterKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 22/07/22.
//

import SwiftUI

struct DoubleQuarterKeycapView: Keycap {
    
    var text: String
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.doubleQuarter
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 15, leftOffSet: -5, rightOffset: 3)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 22)
                .rotationEffect(.degrees(90))
                .offset(x: -(width/2.3), y: (height/3))
            
            Trapezoid(percent: 15, leftOffSet: 3, rightOffset: -5)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 22)
                .rotationEffect(.degrees(-90))
                .offset(x: (width/2.3), y: (height/3))
            
            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: width * 0.75, height: height * 0.75)
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

struct DoubleQuarterKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            DoubleQuarterKeycapView(text: "1", colorSet: .lightGrayKeycap)
            DoubleQuarterKeycapView(text: "2", colorSet: .darkGrayKeycap)
            DoubleQuarterKeycapView(text: "3", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

//
//  DoubleKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 22/07/22.
//

import SwiftUI

struct DoubleKeycapView: Keycap {
    
    var text: String
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.double
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 15, leftOffSet: -3, rightOffset: 3)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 20)
                .rotationEffect(.degrees(90))
                .offset(x: -(width/2.4), y: (height/3))
            
            Trapezoid(percent: 15, leftOffSet: 3, rightOffset: -3)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 20)
                .rotationEffect(.degrees(-90))
                .offset(x: (width/2.4), y: (height/3))
            
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


struct DoubleKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            DoubleKeycapView(text: "1", colorSet: .lightGrayKeycap)
            DoubleKeycapView(text: "2", colorSet: .darkGrayKeycap)
            DoubleKeycapView(text: "3", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

//
//  DoubleThreeQuarterKCView.swift
//  Keychron
//
//  Created by Jorge Martinez on 22/07/22.
//

import SwiftUI

struct DoubleThreeQuarterKCView: Keycap {
    
    var text: String
    var colorSet: ColorSet
    var width: CGFloat = Constants.Size.doubleThreeQuarter
    
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
            
            KCTextView(text: text)
                .padding(.top, 10)
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}
struct DoubleThreeQuarterKCView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            DoubleThreeQuarterKCView(text: "1", colorSet: .lightGrayKC)
            DoubleThreeQuarterKCView(text: "2", colorSet: .darkGrayKC)
            DoubleThreeQuarterKCView(text: "3", colorSet: .orangeKC)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

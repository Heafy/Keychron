//
//  SingleThreeQuarterKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 30/06/22.
//

import SwiftUI

struct SingleThreeQuarterKeycapView: Keycap {
    
    var text: String
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.singleThreeQuarter
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 5, leftOffSet: 13, rightOffset: 50)
                .fill(colorSet.leftColor)
                .frame(width: width, height: height * 0.40)
                .rotationEffect(.degrees(90))
                .offset(x: -(width * 0.45), y: (height * 0.5))
            
            Trapezoid(percent: 5, leftOffSet: 50, rightOffset: 13)
                .fill(colorSet.rightColor)
                .frame(width: width, height: height * 0.40)
                .rotationEffect(.degrees(-90))
                .offset(x: (width * 0.45), y: (height * 0.5))
            
            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: width * 0.75, height: height * 0.75)
                .cornerRadius(4)
                .padding(5)
            
            KeycapTextView(text: text)
                .padding(.top, 10)
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleThreeQuarterKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            SingleThreeQuarterKeycapView(text: "tab", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

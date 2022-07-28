//
//  SingleHalfKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 16/06/22.
//

import SwiftUI

struct SingleHalfKeycapView: Keycap {
    
    var text: String
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.singleHalf
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 20, leftOffSet: 3, rightOffset: 28)
                .fill(colorSet.leftColor)
                .frame(width: width, height: height * 0.30)
                .rotationEffect(.degrees(90))
                .offset(x: -(width * 0.40), y: (height * 0.45))
            
            Trapezoid(percent: 20, leftOffSet: 28, rightOffset: 3)
                .fill(colorSet.rightColor)
                .frame(width: width, height: height * 0.30)
                .rotationEffect(.degrees(-90))
                .offset(x: (width * 0.40), y: (height * 0.45))
            
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

struct SingleHalfKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            SingleHalfKeycapView(text: "tab", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

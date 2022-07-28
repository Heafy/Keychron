//
//  SingleKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct SingleKeycapView: Keycap {
    
    var text: String
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.single
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 10, leftOffSet: 1, rightOffset: 7)
                .fill(colorSet.leftColor)
                .frame(width: width, height: height * 0.20)
                .rotationEffect(.degrees(90))
                .offset(x: -(width * 0.40), y: (width * 0.40))
            
            Trapezoid(percent: 10, leftOffSet: 7, rightOffset: 1)
                .fill(colorSet.rightColor)
                .frame(width: width, height: height * 0.20)
                .rotationEffect(.degrees(-90))
                .offset(x: (width * 0.40), y: (width * 0.40))
            
            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: width * 0.75, height: height * 0.75)
                .cornerRadius(4)
                .padding(5)
            
            VStack(spacing: 0) {
                Text(text)
                    .foregroundColor(.white)
                    .fontWeight(Keycaps.Fonts.weight)
                    .font(Keycaps.Fonts.mainFont)
                    .padding(.top, 10)
                
                //                if let alternativetext = alternativetext {
                //                    Text(alternativetext)
                //                        .foregroundColor(.white)
                //                        .fontWeight(.bold)
                //                        .font(Keycaps.Fonts.altFont)
                //                }
            } // VStack
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleKeyCapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            SingleKeycapView(text: "1", colorSet: .lightGrayKeycap)
            SingleKeycapView(text: "Q", colorSet: .lightGrayKeycap)
            SingleKeycapView(text: "W", colorSet: .darkGrayKeycap)
            SingleKeycapView(text: "E", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

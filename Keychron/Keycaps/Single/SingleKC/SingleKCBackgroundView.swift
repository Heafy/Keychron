//
//  SingleKCBackgroundView.swift
//  Keychron
//
//  Created by Jorge Martinez on 28/07/22.
//

import SwiftUI

struct SingleKCBackgroundView: Keycap {
    
    var colorSet: ColorSet
    var width: CGFloat = Constants.Size.single
    
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
            
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleKCBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SingleKCBackgroundView(colorSet: .lightGrayKC)
            SingleKCBackgroundView(colorSet: .darkGrayKC)
            SingleKCBackgroundView(colorSet: .orangeKC)
        } // VStack
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

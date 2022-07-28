//
//  SpacebarKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 22/07/22.
//

import SwiftUI

struct SpacebarKeycapView: Keycap {
    
    var colorSet: ColorSet = .lightGrayKeycap
    var width: CGFloat = Keycaps.Size.spacebar
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 10, leftOffSet: -2, rightOffset: 7)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 23)
                .rotationEffect(.degrees(90))
                .offset(x: -(width/2.1), y: (height/3))
            
            Trapezoid(percent: 10, leftOffSet: 7, rightOffset: -2)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 23)
                .rotationEffect(.degrees(-90))
                .offset(x: (width/2.1), y: (height/3))
            
            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: width * 0.90, height: height * 0.75)
                .cornerRadius(4)
                .padding(5)
            
            KeycapTextView(text: "_____")            
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SpacebarKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        SpacebarKeycapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

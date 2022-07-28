//
//  DoubleQuarterKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 22/07/22.
//

import SwiftUI

struct DoubleQuarterKeycapView: Keycap {
    
    var text: String?
    var symbol: Keycaps.Unicode?
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.doubleQuarter
    
    init(text: String? = nil, symbol: Keycaps.Unicode? = nil, colorSet: ColorSet) {
        self.text = text
        self.symbol = symbol
        self.colorSet = colorSet
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 15, leftOffSet: -4, rightOffset: 3)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 15)
                .rotationEffect(.degrees(90))
                .offset(x: -(width/2.25), y: (height/2.5))
            
            Trapezoid(percent: 15, leftOffSet: 3, rightOffset: -4)
                .fill(colorSet.leftColor)
                .frame(width: height, height: 15)
                .rotationEffect(.degrees(-90))
                .offset(x: (width/2.25), y: (height/2.5))
            
            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: width * 0.80, height: height * 0.75)
                .cornerRadius(4)
                .padding(5)
            
            if let text = text {
                KeycapTextView(text: text)
                    .padding(.top, 10)
            } else if let symbol = symbol {
                KeycapTextView(text: symbol.rawValue, customSize: 18)
                    .padding(.top, 10)
            }
            
            
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

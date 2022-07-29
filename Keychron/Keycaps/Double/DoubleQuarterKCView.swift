//
//  DoubleQuarterKCView.swift
//  Keychron
//
//  Created by Jorge Martinez on 22/07/22.
//

import SwiftUI

struct DoubleQuarterKCView: Keycap {
    
    var text: String?
    var symbol: Constants.Unicode?
    var colorSet: ColorSet
    var width: CGFloat = Constants.Size.doubleQuarter
    
    init(text: String? = nil, symbol: Constants.Unicode? = nil, colorSet: ColorSet) {
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
                KCTextView(text: text)
                    .padding(.top, 10)
            } else if let symbol = symbol {
                KCTextView(text: symbol.rawValue, customSize: 18)
                    .padding(.top, 10)
            }
            
            
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct DoubleQuarterKCView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            DoubleQuarterKCView(text: "1", colorSet: .lightGrayKC)
            DoubleQuarterKCView(text: "2", colorSet: .darkGrayKC)
            DoubleQuarterKCView(text: "3", colorSet: .orangeKC)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

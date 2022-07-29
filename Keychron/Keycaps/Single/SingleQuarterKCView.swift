//
//  SingleQuarterKCView.swift
//  Keychron
//
//  Created by Jorge Martinez on 16/06/22.
//

import SwiftUI

struct SingleQuarterKCView: Keycap {
    
    var text: String?
    var symbol: Constants.Unicode?
    var colorSet: ColorSet
    var width: CGFloat = Constants.Size.singleQuarter
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: width, height: height)
                .cornerRadius(10)
            
            Trapezoid(percent: 10, leftOffSet: 1, rightOffset: 16)
                .fill(colorSet.leftColor)
                .frame(width: width, height: height * 0.25)
                .rotationEffect(.degrees(90))
                .offset(x: -(width * 0.45), y: (height * 0.45))
            
            Trapezoid(percent: 10, leftOffSet: 16, rightOffset: 1)
                .fill(colorSet.rightColor)
                .frame(width: width, height: height * 0.25)
                .rotationEffect(.degrees(-90))
                .offset(x: (width * 0.45), y: (height * 0.45))
            
            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: width * 0.75, height: height * 0.75)
                .cornerRadius(4)
                .padding(5)
            
            VStack(spacing: 5) {
                if let text = text {
                    KCTextView(text: text)
                        .padding(.top, 10)
                }
                
                if let symbol = symbol {
                    if let _ = text {
                        KCTextView(text: symbol.rawValue)
                    } else {
                        KCTextView(text: symbol.rawValue)
                            .padding(.top, 10)
                    }
                    
                }
            } // VStack
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleQuarterKCView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            SingleQuarterKCView(text: "control" ,colorSet: .darkGrayKC)
            SingleQuarterKCView(text: "option", symbol: .option ,colorSet: .darkGrayKC)
            SingleQuarterKCView(symbol: .command, colorSet: .darkGrayKC)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

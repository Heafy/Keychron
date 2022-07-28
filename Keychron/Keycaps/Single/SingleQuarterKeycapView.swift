//
//  SingleQuarterKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 16/06/22.
//

import SwiftUI

struct SingleQuarterKeycapView: Keycap {
    
    var text: String?
    var symbol: Keycaps.Unicode?
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.singleQuarter
    
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
                    KeycapTextView(text: text)
                        .padding(.top, 10)
                }
                
                if let symbol = symbol {
                    if let _ = text {
                        KeycapTextView(text: symbol.rawValue)
                    } else {
                        KeycapTextView(text: symbol.rawValue)
                            .padding(.top, 10)
                    }
                    
                }
            } // VStack
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleQuarterKeycapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            SingleQuarterKeycapView(text: "control" ,colorSet: .darkGrayKeycap)
            SingleQuarterKeycapView(text: "option", symbol: .option ,colorSet: .darkGrayKeycap)
            SingleQuarterKeycapView(symbol: .command, colorSet: .darkGrayKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

//
//  SingleKeyCapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI



struct SingleKeyCapView: Keycap {
    
    var text: String
    var alternativetext: String?
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
                    .fontWeight(.bold)
                    .font(Keycaps.Fonts.mainFont)
                    .padding(.top, 4)
                
                if let alternativetext = alternativetext {
                    Text(alternativetext)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(Keycaps.Fonts.altFont)
                }
            } // VStack
        } // ZStack
        .frame(width: width, height: height)
        .cornerRadius(10)
    }
}

struct SingleKeyCapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            SingleKeyCapView(text: "1", alternativetext: "B" ,colorSet: .lightGrayKeycap)
            SingleKeyCapView(text: "Q", colorSet: .lightGrayKeycap)
            SingleKeyCapView(text: "W", colorSet: .darkGrayKeycap)
            SingleKeyCapView(text: "E", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

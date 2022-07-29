//
//  SingleKeycapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct SingleKeycapView: Keycap {
    
    var text: String
    var bluetoothEnabled: Bool = false
    var colorSet: ColorSet
    var width: CGFloat = Keycaps.Size.single
    
    var body: some View {
        ZStack(alignment: .top) {
            
            SingleKeycapBackgroundView(colorSet: colorSet)
            
            VStack(spacing: 0) {
                KeycapTextView(text: text)
                    .padding(.top, 10)
                
                if bluetoothEnabled {
                    Spacer().frame(height: 14)
                    
                    HStack {
                        Spacer()
                        
                        Image("bluetooth")
                            .resizable()
                            .frame(width: Keycaps.Fonts.fontSize, height: Keycaps.Fonts.fontSize)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                        
                        Spacer().frame(width: 10)
                    }
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
            SingleKeycapView(text: "1 !", bluetoothEnabled: true, colorSet: .lightGrayKeycap)
            SingleKeycapView(text: "2 @",  bluetoothEnabled: true, colorSet: .lightGrayKeycap)
            SingleKeycapView(text: "Q", colorSet: .darkGrayKeycap)
            SingleKeycapView(text: "w", colorSet: .orangeKeycap)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

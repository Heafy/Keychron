//
//  SingleKCView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct SingleKCView: Keycap {
    
    var text: String
    var bluetoothEnabled: Bool = false
    var colorSet: ColorSet
    var width: CGFloat = Constants.Size.single
    
    var body: some View {
        ZStack(alignment: .top) {
            
            SingleKCBackgroundView(colorSet: colorSet)
            
            VStack(spacing: 0) {
                KCTextView(text: text)
                    .padding(.top, 10)
                
                if bluetoothEnabled {
                    Spacer().frame(height: 14)
                    
                    HStack {
                        Spacer()
                        
                        Image("bluetooth")
                            .resizable()
                            .frame(width: Constants.Fonts.fontSize, height: Constants.Fonts.fontSize)
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

struct SingleKCView_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 2) {
            SingleKCView(text: "1 !", bluetoothEnabled: true, colorSet: .lightGrayKC)
            SingleKCView(text: "2 @",  bluetoothEnabled: true, colorSet: .lightGrayKC)
            SingleKCView(text: "Q", colorSet: .darkGrayKC)
            SingleKCView(text: "w", colorSet: .orangeKC)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

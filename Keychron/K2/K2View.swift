//
//  K2View.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2View: View {
    
    private var startGradient: Color = Color(.sRGB, red: 195/255, green: 199/255, blue: 198/255, opacity: 1.0)
    private var endGradient: Color = Color(.sRGB, red: 221/255, green: 222/255, blue: 217/255, opacity: 1.0)
    private var background: Color = Color(.sRGB, red: 48/255, green: 48/255, blue: 48/255, opacity: 1.0)
    private var border: Color = Color(.sRGB, red: 35/255, green: 35/255, blue: 35/255, opacity: 1.0)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [startGradient, endGradient]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                K2FirstRowView()
                K2SecondRowView()
                K2ThirdRowView()
                K2FourthRowView()
                K2FifthRowView()
                K2SixthRowView()
            } // VStack
            .padding(10)
            .background(background)
            .border(border, width: 8)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 8, height: 8)
                .offset(x: 491, y: 170)
//
            
            // Custom border modifier
            // Delete rectangle margin
            // Create some color palette
            // Remove Navigation and make it a gallery
//            Rectangle()
//                .fill(background)
//                .frame(width: 8, height: 8)
//                .offset(x: 491, y: -158)
//
//            Rectangle()
//                .fill(background)
//                .frame(width: 8, height: 8)
//                .offset(x: -491, y: 158)
//
//            Rectangle()
//                .fill(background)
//                .frame(width: 8, height: 8)
//                .offset(x: -491, y: -158)

        } // ZStack
    }
}

struct K2View_Previews: PreviewProvider {
    static var previews: some View {
        K2View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

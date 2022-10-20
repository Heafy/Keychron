//
//  K6View.swift
//  Keychron
//
//  Created by indra on 26/08/22.
//

import SwiftUI

struct K6View: View {
    private var startGradient: Color = Color(.sRGB, red: 195/255, green: 199/255, blue: 198/255, opacity: 1.0)
    private var endGradient: Color = Color(.sRGB, red: 221/255, green: 222/255, blue: 217/255, opacity: 1.0)
    private var background: Color = Color(.sRGB, red: 48/255, green: 48/255, blue: 48/255, opacity: 1.0)
    private var border: Color = Color(.sRGB, red: 35/255, green: 35/255, blue: 35/255, opacity: 1.0)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [startGradient, endGradient]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                K6FirstRowView()
                K6SecondRowView()
                K6ThirdRowView()
                K6FourthRowView()
                K6FifthRowView()
            } // VStack
            .padding(10)
            .background(background)
            .border(border, width: 8)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: 491, y: 158)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: 491, y: -158)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: -491, y: 158)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: -491, y: -158)

        } // ZStack
    }
}
struct K6View_Previews: PreviewProvider {
    static var previews: some View {
        K6View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  ContentView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct ContentView: View {
    
    private var startGradient: Color = Color(.sRGB, red: 195/255, green: 199/255, blue: 198/255, opacity: 1.0)
    private var endGradient: Color = Color(.sRGB, red: 221/255, green: 222/255, blue: 217/255, opacity: 1.0)
    private var background: Color = Color(.sRGB, red: 48/255, green: 48/255, blue: 48/255, opacity: 1.0)
    private var border: Color = Color(.sRGB, red: 35/255, green: 35/255, blue: 35/255, opacity: 1.0)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [startGradient, endGradient]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                FirstRowView()
                Spacer().frame(height: Constants.Dimensions.verticalSpacing * 5)
                SecondRowView()
                ThirdRowView()
                FourthRowView()
                FifthRowView()
                SixthRowView()
            } // VStack
            .padding(10)
            .background(background)
            .border(border, width: 8)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: 559, y: 184)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: 559, y: -184)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: -559, y: 184)
            
            Rectangle()
                .fill(background)
                .frame(width: 8, height: 8)
                .offset(x: -559, y: -184)
        } // ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

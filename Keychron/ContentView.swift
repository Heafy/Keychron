//
//  ContentView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct ContentView: View {
   
    var start: Color = Color(.sRGB, red: 195/255, green: 199/255, blue: 198/255, opacity: 1.0)
    var end: Color = Color(.sRGB, red: 221/255, green: 222/255, blue: 217/255, opacity: 1.0)
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [start, end]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: Keycaps.Dimensions.verticalSpacing) {
                TopRowKeycapView()
                Spacer().frame(height: Keycaps.Dimensions.verticalSpacing * 5)
                FirstRowKeycapsView()
                SecondRowKeycapsView()
                ThirdRowKeycapsView()
                FourthRowKeycapsView()
                FifthRowKeycapsView()
            } // VStack
            .padding(10)
            .background(Keycaps.Colors.background)
            .border(Keycaps.Colors.border, width: 8)
            
            Rectangle()
                .fill(Keycaps.Colors.background)
                .frame(width: 8, height: 8)
                .offset(x: 559, y: 184)
            
            Rectangle()
                .fill(Keycaps.Colors.background)
                .frame(width: 8, height: 8)
                .offset(x: 559, y: -184)
            
            Rectangle()
                .fill(Keycaps.Colors.background)
                .frame(width: 8, height: 8)
                .offset(x: -559, y: 184)
            
            Rectangle()
                .fill(Keycaps.Colors.background)
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

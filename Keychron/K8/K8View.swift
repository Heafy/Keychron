//
//  K8View.swift
//  Keychron
//
//  Created by indra on 26/08/22.
//

import SwiftUI

struct K8View: View {
    private var startGradient: Color = Color.random
    private var endGradient: Color =  Color.random
    private var background: Color = Color(.sRGB, red: 48/255, green: 48/255, blue: 48/255, opacity: 1.0)
    private var border: Color = Color(.sRGB, red: 35/255, green: 35/255, blue: 35/255, opacity: 1.0)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [startGradient, endGradient]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                K8FirstRowView()
                Spacer().frame(height: Constants.Dimensions.verticalSpacing * 5)
                K8SecondRowView()
                K8ThirdRowView()
                K8FourthRowView()
                K8FifthRowView()
                K8SixthRowView()
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

struct K8View_Previews: PreviewProvider {
    static var previews: some View {
        K8View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

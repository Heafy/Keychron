//
//  ContentView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: Keycaps.Dimensions.verticalSpacing) {
            TopRowKeycapView()
            Spacer().frame(height: Keycaps.Dimensions.verticalSpacing * 5)
            FirstRowKeycapsView()
            SecondRowKeycapsView()
            ThirdRowKeycapsView()
            FourthRowKeycapsView()
            FifthRowKeycapsView()
        } // VStack
        .padding(3)
        .background(Keycaps.Colors.background)
        .border(Keycaps.Colors.border, width: 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

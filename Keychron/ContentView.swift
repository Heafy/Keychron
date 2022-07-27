//
//  ContentView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            HStack {
                TopRowKeycapView()
            }
            FirstRowKeycapsView()
            SecondRowKeycapsView()
            ThirdRowKeycapsView()
            FourthRowKeycapsView()
            FifthRowKeycapsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

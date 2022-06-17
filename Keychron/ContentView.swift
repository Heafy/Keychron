//
//  ContentView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Button(action: {
            print()
        }, label: {
            VStack {
                HStack {
                    SingleKeyCapView(text: "Q", colorSet: .lightGrayKeycap)
                    SingleKeyCapView(text: "W", colorSet: .darkGrayKeycap)
                    SingleKeyCapView(text: "E", colorSet: .orangeKeycap)
                }
                HStack {
                    SingleQuarterKeycapView(text: "control", colorSet: .darkGrayKeycap)
                    SingleQuarterKeycapView(text: "tab", colorSet: .darkGrayKeycap)
                    SingleQuarterKeycapView(text: "command" , colorSet: .darkGrayKeycap)
                }
            }
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

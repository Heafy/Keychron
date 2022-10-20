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
        NavigationView {
            List {
                NavigationLink("K6", destination: K6View())
                NavigationLink("K8", destination: K8View())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

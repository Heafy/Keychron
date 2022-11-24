//
//  ContentView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var index = 0
    let timer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $index) {
            K12View()
                .tag(0)
            K6View()
                .tag(1)
            K2View()
                .tag(2)
            K8View()
                .tag(3)
        } //TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .ignoresSafeArea()
        .onReceive(timer) { input in
            print("Tick received")
            withAnimation {
                index += 1
                index = index % 4
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

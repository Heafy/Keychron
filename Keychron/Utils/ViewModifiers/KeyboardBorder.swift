//
//  BorderModifier.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct KeyboardBorder: ViewModifier {
   
    private var background: Color = Color(.sRGB, red: 48/255, green: 48/255, blue: 48/255, opacity: 1.0)
    private var border: Color = Color(.sRGB, red: 35/255, green: 35/255, blue: 35/255, opacity: 1.0)
    
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(background)
            .border(border, width: 8)
    }
}

extension View {
    
    func keyboardBorder() -> some View {
        modifier(KeyboardBorder())
    }
}

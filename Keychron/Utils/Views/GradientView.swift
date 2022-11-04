//
//  GradientView.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct GradientView: View {
    
    private var colorPalette = Constants.BackgroundColorPalette.getRandomColor()
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [colorPalette.start, colorPalette.end]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}

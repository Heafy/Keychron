//
//  K2View.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K2View: View {
    
    var body: some View {
        ZStack {
            GradientView()
            
            VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                K2FirstRowView()
                K2SecondRowView()
                K2ThirdRowView()
                K2FourthRowView()
                K2FifthRowView()
                K2SixthRowView()
            } // VStack
            .keyboardBorder()
        } // ZStack
    }
}

struct K2View_Previews: PreviewProvider {
    static var previews: some View {
        K2View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

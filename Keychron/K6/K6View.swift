//
//  K6View.swift
//  Keychron
//
//  Created by Jorge Martinez on 26/08/22.
//

import SwiftUI

struct K6View: View {
    
    var body: some View {
        ZStack {
            GradientView()
            
            VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                K6FirstRowView()
                K6SecondRowView()
                K6ThirdRowView()
                K6FourthRowView()
                K6FifthRowView()
            } // VStack
            .keyboardBorder()
        } // ZStack
    }
}
struct K6View_Previews: PreviewProvider {
    static var previews: some View {
        K6View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  K12View.swift
//  Keychron
//
//  Created by Jorge Martinez on 03/11/22.
//

import SwiftUI

struct K12View: View {
    
    var body: some View {
        ZStack {
            GradientView()
            
            VStack(spacing: Constants.Dimensions.titleSpacing) {
                
                TitleText(text: "K12 / 60%")
                
                VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                    K12FirstRowView()
                    K12SecondRowView()
                    K12ThirdRowView()
                    K12FourthRowView()
                    K12FifthRowView()
                } // VStack
                .keyboardBorder()
            } // VStack
        } // ZStack
    }
}

struct K12View_Previews: PreviewProvider {
    static var previews: some View {
        K12View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

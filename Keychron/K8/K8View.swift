//
//  K8View.swift
//  Keychron
//
//  Created by Jorge Martinez on 26/08/22.
//

import SwiftUI

struct K8View: View {
    
    var body: some View {
        ZStack {
            GradientView()
            
            VStack(alignment: .leading, spacing: Constants.Dimensions.verticalSpacing) {
                K8FirstRowView()
                Spacer().frame(height: Constants.Dimensions.verticalSpacing * 5)
                K8SecondRowView()
                K8ThirdRowView()
                K8FourthRowView()
                K8FifthRowView()
                K8SixthRowView()
            } // VStack
            .keyboardBorder()
        } // ZStack
    }
}

struct K8View_Previews: PreviewProvider {
    static var previews: some View {
        K8View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

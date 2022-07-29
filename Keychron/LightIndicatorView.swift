//
//  LightIndicatorView.swift
//  Keychron
//
//  Created by Jorge Martinez on 29/07/22.
//

import SwiftUI

enum LightIndicator {
    
    case energy
    case bluetooth
    case caps
    
    var light: Color {
        switch self {
        case .energy:
            return .red
        default:
            return .blue
        }
    }
}

struct LightIndicatorView: View {
    
    var option: LightIndicator
    var color: Color = ColorSet.lightGrayKC.mainColor
    var width: CGFloat = Constants.Size.single
    
    var body: some View {
        VStack(spacing: 10) {
            
            Capsule()
                .fill(Bool.random() ? option.light : ColorSet.darkGrayKC.leftColor)
                .frame(width: 8, height: 15)
            
            if option == .caps {
                Text("A")
                    .foregroundColor(color)
                    .fontWeight(Constants.Fonts.weight)
                    .font(Constants.Fonts.mainFont)
                    .frame(width: 10, height: 10)
                    .padding(1)
                    .border(color, width: 1)
            } else {
                Image("energy")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(color)
                    .padding(1)
                    .border(color, width: 1)
            }
        } // VStack
        .frame(width: width, height: width)
    }
}

struct LightIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            LightIndicatorView(option: .energy)
            LightIndicatorView(option: .bluetooth)
            LightIndicatorView(option: .caps)
        } // HStack
    }
}

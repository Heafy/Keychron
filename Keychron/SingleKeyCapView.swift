//
//  SingleKeyCapView.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct SingleKeyCapView: View {
    
    var colorSet: ColorSet
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(colorSet.topBottomColor)
                .frame(width: 200, height: 200)
                .cornerRadius(10)

                Trapezoid(percent: 40, leftOffSet: 15, rightOffset: 100)
                    .fill(colorSet.leftColor)
                    .frame(width: 200, height: 150)
                    .rotationEffect(.degrees(90))
                    .offset(x: -25, y: 25)
                
            Trapezoid(percent: 20, leftOffSet: 140, rightOffset: 55)
                .fill(colorSet.rightColor)
                .frame(width: 200, height: 150)
                .rotationEffect(.degrees(-90))
                .offset(x: 25, y: 25)
           
            Rectangle()
                .fill(colorSet.mainColor)
                .frame(width: 150, height: 150)
                .cornerRadius(4)
                .padding()
            
            Text("A")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 70))
                .padding(.top)
            
            
        }
        .cornerRadius(10)
            
    }
}

struct SingleKeyCapView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            SingleKeyCapView(colorSet: .lightGrayKeycap)
            SingleKeyCapView(colorSet: .darkGrayKeycap)
            SingleKeyCapView(colorSet: .orangeKeycap)
        }
    }
}

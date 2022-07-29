//
//  Trapezoid.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct Trapezoid: Shape {
    
    @State var percent: Double
    @State var leftOffSet: Double = 0
    @State var rightOffset: Double = 0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let edge = rect.width * CGFloat(percent/100)
        path.move(to: CGPoint(x: rect.minX + edge + leftOffSet, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - edge - rightOffset, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct Trapezoid_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Trapezoid(percent: 10, leftOffSet: 10, rightOffset: 100)
        }
    }
}

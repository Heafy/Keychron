//
//  Constants.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct Constants {
    
    struct Size {
        static let height: CGFloat = 60
        static let single: CGFloat = height
        static let singleQuarter: CGFloat = single * 1.25
        static let singleHalf: CGFloat = single * 1.5
        static let singleThreeQuarter: CGFloat = single * 1.75
        static let double: CGFloat = single * 2
        static let doubleQuarter: CGFloat = double * 1.14
        static let doubleThreeQuarter: CGFloat = double * 1.40
        static let spacebar: CGFloat = single * 6.35
    }
    
    struct Fonts {
        static let fontSize: CGFloat = Constants.Size.height * 0.18
        static let mainFont: Font = .system(size: fontSize)
        static let weight: Font.Weight = .regular
    }
    
    enum Unicode: String {
        case option = "\u{2325}"
        case command = "\u{2318}"
        case enter = "\u{21B5}"
        case delete = "\u{27F5}"
    }
    
    enum Symbols: String {
        case f1
        case f2
        case f3
        case f4
        case f5
        case f7
        case f8
        case f9
        case f10
        case f11
        case f12
        case crop
        case microphone
        case bulb
    }
    
    struct Dimensions {
        static let verticalSpacing: CGFloat = 1
        static let horizontalSpacing: CGFloat = 0.5
        static let sectorSpacing: CGFloat = 15
        static let titleSpacing: CGFloat = 20
    }
    
    struct BackgroundColorPalette {
        typealias ColorPalette = (start: Color, end: Color)
        private static var colors: [ColorPalette] = [
            // Red - Orange
            (start:  Color(red: 225, green: 77, blue: 42),
             end: Color(red: 253, green: 132, blue: 31)),
            // Blue - Cyan
            (start:  Color(red: 23, green: 70, blue: 162),
             end: Color(red: 95, green: 157, blue: 247)),
            // Pink
            (start: Color(red: 144, green: 94, blue: 150),
             end: Color(red: 213, green: 139, blue: 221)),
            // Purple - Cyan
            (start: Color(red: 111, green: 56, blue: 197),
             end: Color(red: 135, green: 162, blue: 251)),
            // Navy - Turquoise
            (start: Color(red: 50, green: 82, blue: 136),
             end: Color(red: 36, green: 161, blue: 156)),
            // Yellow - Purple
            (start: Color(red: 255, green: 228, blue: 89),
             end:  Color(red: 61, green: 8, blue: 123)),
            // Green rgb
            (start: Color(red: 162, green: 222, blue: 150),
             end: Color(red: 60, green: 165, blue: 157)),
            // Dark Green
            (start: Color(red: 161, green: 181, blue: 125),
             end: Color(red: 211, green: 236, blue: 167)),
        ]
        
        static func getRandomColor() -> ColorPalette {
            return colors.randomElement()!
        }
    }
}

extension Color {

    init(red: Double, green: Double, blue: Double) {
        self.init(.sRGB, red: red/255, green: green/255, blue: blue/255, opacity: 1.0)
    }
}

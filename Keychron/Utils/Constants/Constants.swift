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
    }
    
    struct BackgroundColorPalette {
        typealias ColorPalette = (start: Color, end: Color)
        private static var colors: [ColorPalette] = [
            (start: Color(.sRGB, red: 17/255, green: 45/255, blue: 78/255, opacity: 1.0),
             end: Color(.sRGB, red: 63/255, green: 114/255, blue: 175/255, opacity: 1.0)),
            
            (start: Color(.sRGB, red: 252/255, green: 222/255, blue: 192/255, opacity: 1.0),
             end: Color(.sRGB, red: 229/255, green: 178/255, blue: 153/255, opacity: 1.0)),
            
            (start: Color(.sRGB, red: 66/255, green: 72/255, blue: 116/255, opacity: 1.0),
             end: Color(.sRGB, red: 166/255, green: 177/255, blue: 225/255, opacity: 1.0)),
            
            (start: Color(.sRGB, red: 57/255, green: 81/255, blue: 68/255, opacity: 1.0),
             end: Color(.sRGB, red: 78/255, green: 108/255, blue: 80/255, opacity: 1.0)),
        ]
        
        static func getRandomColor() -> ColorPalette {
            return colors.randomElement()!
        }
    }
}

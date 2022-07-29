//
//  Constants.swift
//  Keychron
//
//  Created by Jorge Martinez on 14/06/22.
//

import SwiftUI

struct Keycaps {
    
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
        static let fontSize: CGFloat = Keycaps.Size.height * 0.18
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
    
    struct Colors {
        static let background: Color = Color(.sRGB, red: 76/255, green: 76/255, blue: 76/255, opacity: 1.0)
        static let border: Color = Color(.sRGB, red: 48/255, green: 46/255, blue: 47/255, opacity: 1.0)
    }
}

enum ColorSet {
    case lightGrayKeycap
    case darkGrayKeycap
    case orangeKeycap
    
    var mainColor: Color {
        switch self {
        case .lightGrayKeycap:
            return Color(.sRGB, red: 143/255, green: 149/255, blue: 154/255, opacity: 1.0)
        case .darkGrayKeycap:
            return Color(.sRGB, red: 93/255, green: 97/255, blue: 103/255, opacity: 1.0)
        case .orangeKeycap:
            return Color(.sRGB, red: 252/255, green: 80/255, blue: 13/255, opacity: 1.0)
        }
    }
    
    var leftColor: Color {
        switch self {
        case .lightGrayKeycap:
            return Color(.sRGB, red: 70/255, green: 71/255, blue: 75/255, opacity: 1.0)
        case .darkGrayKeycap:
            return Color(.sRGB, red: 60/255, green: 62/255, blue: 63/255, opacity: 1.0)
        case .orangeKeycap:
            return Color(.sRGB, red: 249/255, green: 97/255, blue: 46/255, opacity: 1.0)
        }
    }
    
    var rightColor: Color {
        switch self {
        case .lightGrayKeycap:
            return Color(.sRGB, red: 73/255, green: 73/255, blue: 75/255, opacity: 1.0)
        case .darkGrayKeycap:
            return Color(.sRGB, red: 56/255, green: 58/255, blue: 60/255, opacity: 1.0)
        case .orangeKeycap:
            return Color(.sRGB, red: 159/255, green: 38/255, blue: 0/255, opacity: 1.0)
        }
    }
    
    var topBottomColor: Color {
        switch self {
        case .lightGrayKeycap:
            return Color(.sRGB, red: 99/255, green: 99/255, blue: 104/255, opacity: 1.0)
        case .darkGrayKeycap:
            return Color(.sRGB, red: 89/255, green: 92/255, blue: 97/255, opacity: 1.0)
        case .orangeKeycap:
            return Color(.sRGB, red: 194/255, green: 46/255, blue: 0/255, opacity: 1.0)
        }
    }
    
}

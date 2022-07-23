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
        static let spacebar: CGFloat = single * 6
    }
    
    struct Fonts {
        private static let fontSize: CGFloat = Keycaps.Size.height * 0.30
        private static let altFontSize: CGFloat = Keycaps.Size.height * 0.15
        
        static let mainFont: Font = .system(size: fontSize)
        static let altFont: Font = .system(size: altFontSize)
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

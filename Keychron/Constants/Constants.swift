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
}

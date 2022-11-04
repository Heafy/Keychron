//
//  ColorSet.swift
//  Keychron
//
//  Created by Jorge Martinez on 29/07/22.
//

import SwiftUI

enum ColorSet {
    case lightGrayKC
    case darkGrayKC
    case orangeKC
    
    var mainColor: Color {
        switch self {
        case .lightGrayKC:
            return Color(.sRGB, red: 143/255, green: 149/255, blue: 154/255, opacity: 1.0)
        case .darkGrayKC:
            return Color(.sRGB, red: 93/255, green: 97/255, blue: 103/255, opacity: 1.0)
        case .orangeKC:
            return Color(.sRGB, red: 252/255, green: 80/255, blue: 13/255, opacity: 1.0)
        }
    }
    
    var leftColor: Color {
        switch self {
        case .lightGrayKC:
            return Color(.sRGB, red: 70/255, green: 71/255, blue: 75/255, opacity: 1.0)
        case .darkGrayKC:
            return Color(.sRGB, red: 60/255, green: 62/255, blue: 63/255, opacity: 1.0)
        case .orangeKC:
            return Color(.sRGB, red: 249/255, green: 97/255, blue: 46/255, opacity: 1.0)
        }
    }
    
    var rightColor: Color {
        switch self {
        case .lightGrayKC:
            return Color(.sRGB, red: 73/255, green: 73/255, blue: 75/255, opacity: 1.0)
        case .darkGrayKC:
            return Color(.sRGB, red: 56/255, green: 58/255, blue: 60/255, opacity: 1.0)
        case .orangeKC:
            return Color(.sRGB, red: 159/255, green: 38/255, blue: 0/255, opacity: 1.0)
        }
    }
    
    var topBottomColor: Color {
        switch self {
        case .lightGrayKC:
            return Color(.sRGB, red: 99/255, green: 99/255, blue: 104/255, opacity: 1.0)
        case .darkGrayKC:
            return Color(.sRGB, red: 89/255, green: 92/255, blue: 97/255, opacity: 1.0)
        case .orangeKC:
            return Color(.sRGB, red: 194/255, green: 46/255, blue: 0/255, opacity: 1.0)
        }
    }
}

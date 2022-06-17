//
//  Keycap.swift
//  Keychron
//
//  Created by Jorge Martinez on 16/06/22.
//

import SwiftUI

protocol Keycap: View {
    
    var width: CGFloat { get set }
    var height: CGFloat {get }
    var colorSet: ColorSet  { get set }
}

extension Keycap {
    
    var height: CGFloat { return Keycaps.Size.height }
    
}

//
//  ExtensionView.swift
//  Healtcare
//
//  Created by eFishery on 15/11/23.
//

import SwiftUI

extension View {
    func customFont(_ fontType: ViewAttributes.FontType , size: CGFloat) -> some View {
        return self.font(Font.custom(fontType.rawValue, size: size))
    }
    
}

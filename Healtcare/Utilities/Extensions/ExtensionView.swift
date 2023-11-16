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
    func customDropShadow(radius: CGFloat = 8) -> some View {
        return self
            .background(
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(radius)
                    .shadow(
                        color: .black.opacity(0.16),
                        radius: radius,
                        x: 0,
                        y: 4
                    )
            )
    }
}

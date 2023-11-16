//
//  ComponentButton.swift
//  Healtcare
//
//  Created by eFishery on 15/11/23.
//

import SwiftUI

struct ComponentButton<Content: View>: View {
    let background: Color
    let foreground: Color
    let border: Color
    let action: () -> Void
    @ViewBuilder var content: Content
    
    
    var body: some View {
        Button {
            withAnimation {
                action()
            }
        } label: {
            content
                .font(.custom(ViewAttributes.FontType.gilroy600.rawValue, size: 16))
                .foregroundColor(foreground)
                .contentShape(Rectangle())
                .padding()
                .background(background)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(border, lineWidth: 1)
                )
        }
    }
}

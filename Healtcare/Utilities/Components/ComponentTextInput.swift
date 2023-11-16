//
//  ComponentTextInput.swift
//  Healtcare
//
//  Created by eFishery on 15/11/23.
//

import SwiftUI

struct ComponentTextInput: View {
    @Binding var text: String
    @Binding var errorText: String
    let tittle: String
    let placeholder: String
    var isPassword: Bool = false
    var isLogin: Bool = false
    
    @State private var showNewPin = false
    
    var body: some View {
        let showError = !errorText.isEmpty
        return VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(tittle)
                    .customFont(.gilroy600, size: 16)
                    .foregroundColor(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if isPassword && isLogin {
                    Button {
                        
                    } label: {
                        Text("Lupa Password anda ?")
                            .customFont(.inter600, size: 14)
                            .foregroundColor(.s1)
                    }
                }
            }
            
            HStack {
                if !showNewPin && isPassword {
                    SecureField(placeholder, text: $text)
                        .font(.custom(ViewAttributes.FontType.inter400.rawValue, size: 12))
                        .disableAutocorrection(true)
                } else {
                    TextField(placeholder, text: $text)
                        .font(.custom(ViewAttributes.FontType.inter400.rawValue, size: 12))
                        .disableAutocorrection(true)
                }
                
                if isPassword {
                    Image(systemName: showNewPin ? "eye.slash.fill": "eye.fill")
                        .resizable()
                        .frame(width: 22, height: 15)
                        .foregroundColor(.gray.opacity(0.5))
                        .frame(width: 24, height: 24)
                        .onTapGesture {
                            withAnimation {
                                showNewPin.toggle()
                            }
                        }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
            .cornerRadius(8)
            .customDropShadow()
            .onChange(of: text) { nv in
                errorText = ""
            }
            if showError {
                Text(errorText)
                    .customFont(.inter400, size: 12)
                    .foregroundColor(.red)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

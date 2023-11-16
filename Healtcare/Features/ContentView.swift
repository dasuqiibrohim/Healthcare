//
//  ContentView.swift
//  Healtcare
//
//  Created by eFishery on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Group {
                    Text("Hai,")
                        .font(Font.custom(ViewAttributes.FontType.gilroy600.rawValue, size: 28)) +
                    Text(" Selamat Datang")
                        .font(Font.custom(ViewAttributes.FontType.gilroy800.rawValue, size: 28))
                }
                .foregroundColor(.title)
                Text("Silahkan login untuk melanjutkan")
                    .customFont(.inter600, size: 12)
                    .foregroundColor(.s1)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(Constants.images.tagLine)
                .padding(.trailing, -16)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            VStack(spacing: 20) {
                ComponentTextInput(text: .constant(""),
                                   errorText: .constant(""),
                                   tittle: "Email",
                                   placeholder: "Masukkan email anda")
                
                ComponentTextInput(text: .constant(""),
                                   errorText: .constant(""),
                                   tittle: "Password",
                                   placeholder: "Masukkan password anda",
                                   isPassword: true,
                                   isLogin: true)
                
                ComponentButton(background: .title,
                                foreground: .white,
                                border: .title,
                                action: {
                    
                },
                                content: {
                    ZStack {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                        Image(systemName: "arrow.right")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                })
                
                HStack {
                    Text("Belum punya akun ?")
                        .customFont(.inter400, size: 14)
                        .foregroundColor(.gray)
                    Button {
                        
                    } label: {
                        Text("Daftar sekarang")
                            .customFont(.gilroy600, size: 14)
                            .foregroundColor(.title)
                    }
                }
                
                Spacer()
                
                Text("© SILK. all right reserved.")
                    .customFont(.inter600, size: 12)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

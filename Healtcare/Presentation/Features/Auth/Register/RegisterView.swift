//
//  RegisterView.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 4) {
                    Group {
                        Text("Hai,")
                            .font(Font.custom(ViewAttributes.FontType.gilroy600.rawValue, size: 28)) +
                        Text(" Selamat Datang")
                            .font(Font.custom(ViewAttributes.FontType.gilroy800.rawValue, size: 28))
                    }
                    .foregroundColor(.title)
                    Text("Silahkan dafatar jika belum punya akun")
                        .customFont(.inter600, size: 12)
                        .foregroundColor(.s1)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(Constants.images.tagLine)
                    .padding(.trailing, -16)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                VStack(spacing: 20) {
                    HStack {
                        ComponentTextInput(text: .constant(""),
                                           errorText: .constant(""),
                                           tittle: "Nama Depan",
                                           placeholder: "Masukkan nama depan anda")
                        ComponentTextInput(text: .constant(""),
                                           errorText: .constant(""),
                                           tittle: "Nama Belakang",
                                           placeholder: "Masukkan nama belakang anda")
                    }
                    
                    ComponentTextInput(text: .constant(""),
                                       errorText: .constant(""),
                                       tittle: "No. KTP",
                                       placeholder: "Masukkan No. KTP anda")
                    
                    ComponentTextInput(text: .constant(""),
                                       errorText: .constant(""),
                                       tittle: "Email",
                                       placeholder: "Masukkan email anda")
                    
                    ComponentTextInput(text: .constant(""),
                                       errorText: .constant(""),
                                       tittle: "No. Telpon",
                                       placeholder: "Masukkan No. Telpon anda")
                    
                    ComponentTextInput(text: .constant(""),
                                       errorText: .constant(""),
                                       tittle: "Password",
                                       placeholder: "Masukkan password anda",
                                       isPassword: true)
                    
                    ComponentTextInput(text: .constant(""),
                                       errorText: .constant(""),
                                       tittle: "Konfirmasi Password",
                                       placeholder: "Masukkan password anda",
                                       isPassword: true)
                    
                    ComponentButton(background: .title,
                                    foreground: .white,
                                    border: .title,
                                    action: { },
                                    content: {
                        ZStack {
                            Text("Register")
                                .frame(maxWidth: .infinity)
                            Image(systemName: "arrow.right")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    })
                    
                    HStack {
                        Text("Sudah punya akun ?")
                            .customFont(.inter400, size: 14)
                            .foregroundColor(.gray)
                        Button {
                            withAnimation{ presentationMode.wrappedValue.dismiss() }
                        } label: {
                            Text("Login sekarang")
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
        .navigationBarBackButtonHidden()
        .background(Color.white)
    }
}

struct RegiseterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

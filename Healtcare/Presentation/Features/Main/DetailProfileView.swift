//
//  DetailProfileView.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import SwiftUI

struct DetailProfileView: View {
    @State var selectTab = 0
    let tabData = ["Profile Saya", "Pengaturan"]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack(spacing: 30) {
                
                HStack {
                    ForEach(0..<tabData.count, id: \.self) { tab in
                        let selected = selectTab == tab
                        Text(tabData[tab])
                            .customFont(selected ? .inter600: .inter400, size: 16)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 20)
                            .foregroundColor(.title)
                            .background(selected ? Color.s2: .clear)
                            .cornerRadius(20)
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    selectTab = tab
                                }
                            }
                    }
                }
                .padding(4)
                .background(Color.white)
                .cornerRadius(20)
                
                Image(Constants.images.proflieCard)
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.bottom, -60)
                    .zIndex(1)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Pilih data yang ingin ditampilkan")
                        .customFont(.gilroy600, size: 16)
                        .foregroundColor(.title)
                    
                    HStack(spacing: 16) {
                        Image(Constants.images.proflieData)
                        
                        VStack(alignment: .leading)  {
                            Text("Data Diri")
                                .customFont(.gilroy600, size: 14)
                            Text("Data diri anda sesuai KTP")
                                .customFont(.inter400, size: 10)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Image(Constants.images.proflieLocation)
                    }
                    .padding(8)
                    
                    
                    Group {
                        ComponentTextInput(text: .constant(""),
                                           errorText: .constant(""),
                                           tittle: "Nama Depan",
                                           placeholder: "Masukkan nama depan anda")
                        
                        ComponentTextInput(text: .constant(""),
                                           errorText: .constant(""),
                                           tittle: "Nama Belakang",
                                           placeholder: "Masukkan nama belakang anda")
                        
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
                    }
                    
                    HStack {
                        Image(systemName: "info.circle.fill")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.title)
                        Text("Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya")
                            .customFont(.inter400, size: 12)
                            .foregroundColor(.gray)
                    }
                    .padding(8)
                    
                    ComponentButton(background: .title,
                                    foreground: .white,
                                    border: .title,
                                    action: {
                        
                    },
                                    content: {
                        ZStack {
                            Text("Simpan Profile")
                                .frame(maxWidth: .infinity)
                            Image(systemName: "arrow.up.bin")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    })
                }
                .padding()
                .padding(.vertical)
                .padding(.top)
                .customDropShadow(radius: 20)
                .padding(.horizontal)
                
                Image(Constants.images.bannerUpdate)
                    .resizable()
                    .frame(maxWidth: .infinity)
            }
            .padding(.top)
        }
        .background(Color.title.opacity(0.1))
        .edgesIgnoringSafeArea(.bottom)
    }
}

//
//  HomeView.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selectTab = 0
    @State private var selectType = 0
    
    let tabData = ["All Product", "Layanan Kesehatan", "Alat Kesehatan", "Asuransi Kesehatan"]
    let typeData = ["Satuan", "Paket Pemeriksaan"]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 32) {
                VStack(spacing: 44) {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Group {
                                Text("Solusi,")
                                    .font(Font.custom(ViewAttributes.FontType.gilroy600.rawValue, size: 18)) +
                                Text(" Kesehatan Anda")
                                    .font(Font.custom(ViewAttributes.FontType.gilroy800.rawValue, size: 18))
                            }
                            .foregroundColor(.title)
                            Text("Update informasi seputar kesehatan semua bisa disini !")
                                .customFont(.inter400, size: 12)
                                .foregroundColor(.s1)
                                .padding(.bottom, 4)
                            ComponentButton(background: .title,
                                            foreground: .white,
                                            border: .title,
                                            action: { },
                                            content: { Text("Selengkapnya")})
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Image(Constants.images.illustrationCalendar)
                            .offset(y: -42)
                    }
                    .foregroundColor(.title)
                    .padding()
                    .customDropShadow()
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Layanan Khusus")
                                .customFont(.gilroy600, size: 18)
                            Text("Tes Covid 19, Cegah Corona Sedini Mungkin")
                                .customFont(.inter400, size: 12)
                                .foregroundColor(.s1)
                                .padding(.bottom, 4)
                            HStack {
                                Text("Daftar Tes")
                                    .customFont(.gilroy700, size: 14)
                                Image(systemName: "arrow.right")
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Image(Constants.images.illustrationInject)
                            .offset(y: -34)
                    }
                    .foregroundColor(.title)
                    .padding()
                    .customDropShadow()
                    
                    HStack {
                        Image(Constants.images.illustrationMagnifying)
                            .offset(y: -34)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Track Pemeriksaan")
                                .customFont(.gilroy600, size: 18)
                            Text("Kamu dapat mengecek progress pemeriksaanmu disini")
                                .customFont(.inter400, size: 12)
                                .foregroundColor(.s1)
                                .padding(.bottom, 4)
                            HStack {
                                Text("Track")
                                    .customFont(.gilroy700, size: 14)
                                Image(systemName: "arrow.right")
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                    }
                    .foregroundColor(.title)
                    .padding()
                    .customDropShadow()
                }
                .padding()
                .padding(.top)
                
                HStack {
                    Image(Constants.images.iconFiletr)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(100)
                        .customDropShadow(radius: 16)
                    
                    HStack {
                        TextField("Search", text: .constant(""))
                            .font(.custom(ViewAttributes.FontType.inter400.rawValue, size: 12))
                        Image(Constants.images.iconSearch)
                    }
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(100)
                    .customDropShadow(radius: 16)
                }
                .padding(.horizontal)
                
                VStack(spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(0..<tabData.count, id: \.self) { tab in
                                let selected = selectTab == tab
                                Text(tabData[tab])
                                    .customFont(.inter600, size: 12)
                                    .foregroundColor(selected ? .white: .title)
                                    .fixedSize(horizontal: true, vertical: false)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal)
                                    .cornerRadius(30)
                                    .customDropShadow(color: selected ? Color.title: Color.white, radius: 8)
                                    .padding(.vertical)
                                    .onTapGesture {
                                        withAnimation(.easeInOut) {
                                            selectTab = tab
                                        }
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack(spacing: 16) {
                        ForEach(0..<2, id: \.self) { _ in
                            productCard
                        }
                    }
                    .padding(.horizontal)
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Pilih Tipe Layanan Kesehatan Anda")
                        .customFont(.gilroy600, size: 16)
                        .foregroundColor(.title)
                    
                    HStack {
                        ForEach(0..<typeData.count, id: \.self) { tab in
                            let selected = selectType == tab
                            Text(typeData[tab])
                                .customFont(selected ? .inter600: .inter400, size: 14)
                                .padding(.vertical, 5)
                                .padding(.horizontal)
                                .foregroundColor(.title)
                                .background(selected ? Color.s2: .clear)
                                .cornerRadius(20)
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        selectType = tab
                                    }
                                }
                        }
                    }
                    .padding(4)
                    .background(Color.white)
                    .cornerRadius(20)
                    
                    ForEach(0..<3, id: \.self) { _ in
                        typeCard
                    }
                }
                .padding(.horizontal)
                
                Image(Constants.images.bannerUpdate)
                    .resizable()
                    .frame(maxWidth: .infinity)
            }
        }
        .background(Color.title.opacity(0.1))
        .edgesIgnoringSafeArea(.bottom)
    }
    
    
    var productCard: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(Color(hex: "#FFEA00"))
                Text("5")
                    .customFont(.inter600, size: 16)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            Image(Constants.images.microscope)
                .padding(.bottom, 12)
            Text("Suntik Steril")
                .customFont(.inter600, size: 14)
                .foregroundColor(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 0) {
                Text("Rp. 10.000")
                    .customFont(.inter600, size: 12)
                    .foregroundColor(.orange1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Ready")
                    .customFont(.inter400, size: 10)
                    .lineLimit(1)
                    .foregroundColor(.g70)
                    .padding(.vertical, 2)
                    .padding(.horizontal)
                    .background(Color.g10)
                    .cornerRadius(100)
            }
        }
        .padding(8)
        .customDropShadow()
    }
    var typeCard: some View {
        HStack(spacing: 24) {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja")
                        .customFont(.inter600, size: 14)
                        .foregroundColor(.title)
                    Text("Rp. 1.400.000")
                        .customFont(.inter600, size: 14)
                        .foregroundColor(.orange1)
                }
                .frame(maxHeight: .infinity, alignment: .topLeading)
                
                VStack(spacing: 4) {
                    HStack {
                        Image(Constants.images.iconHospital)
                        Text("Lenmarc Surabaya")
                            .customFont(.inter600, size: 14)
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Image(Constants.images.iconLocation)
                        Text("Dukuh Pakis, Surabaya")
                            .customFont(.inter400, size: 12)
                            .foregroundColor(.gray)
                            .lineLimit(1)
                    }
                }
            }
            .padding(.leading, 16)
            .padding(.vertical)
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(Constants.images.hospital)
                .resizable()
                .frame(width: 120)
                .cornerRadius(16)
        }
        .customDropShadow(radius: 16)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

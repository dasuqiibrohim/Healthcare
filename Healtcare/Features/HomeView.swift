//
//  HomeView.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Solusi, Kesehatan Anda")
                                .customFont(.gilroy600, size: 18)
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
                    }
                    .foregroundColor(.title)
                    .padding()
                    .customDropShadow()
                    
                    HStack {
                        Image(Constants.images.illustrationMagnifying)
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
                
                HStack {
                    Image(Constants.images.iconFiletr)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(100)
                        .customDropShadow(radius: 16)
                        
                }
                
                Image(Constants.images.bannerUpdate)
                    .resizable()
                    .frame(maxWidth: .infinity)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

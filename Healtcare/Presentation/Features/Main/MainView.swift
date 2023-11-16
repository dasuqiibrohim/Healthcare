//
//  MainView.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import SwiftUI

struct MainView: View {
    @State private var showProfile: Bool = false
    @State private var isHomeMenu: Bool = true
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack(spacing: 16) {
                    if isHomeMenu {
                        Image(Constants.images.iconMenu)
                            .onTapGesture {
                                withAnimation {
                                    showProfile = true
                                }
                            }
                    } else {
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 22, height: 22)
                            .onTapGesture {
                                withAnimation {
                                    isHomeMenu = true
                                }
                            }
                    }
                    Spacer()
                    Image(Constants.images.iconShop)
                    Image(Constants.images.iconNotif)
                }
                .foregroundColor(.title)
                .padding()
                .background(Color.white)
                
                if isHomeMenu {
                    HomeView()
                } else {
                    DetailProfileView()
                }
            }
            
            if showProfile {
                ProfileView(showProfile: $showProfile, isHomeMenu: $isHomeMenu)
            }
        }
        .navigationBarBackButtonHidden()
        .background(Color.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

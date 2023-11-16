//
//  ProfileView.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import SwiftUI

struct ProfileView: View {
    @Binding var showProfile: Bool
    @Binding var isHomeMenu: Bool
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "x.circle.fill")
                .foregroundColor(.white)
                .padding(24)
                .onTapGesture {
                    showProfile = false
                }
            VStack(spacing: 24) {
                HStack(spacing: 16) {
                    Circle()
                        .frame(width: 40, height: 40)
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Angga Praja")
                            .customFont(.gilroy700, size: 14)
                            
                        Text("Membership BBLK")
                            .customFont(.inter600, size: 10)
                    }
                    .foregroundColor(.title)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Text("Profile Saya")
                        .customFont(.inter600, size: 12)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.gray)
                .contentShape(Rectangle())
                .onTapGesture {
                    showProfile = false
                    isHomeMenu = false
                }
                
                HStack {
                    Text("Profile Saya")
                        .customFont(.inter600, size: 12)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.gray)
                .contentShape(Rectangle())
                .onTapGesture {
                    showProfile = false
                    isHomeMenu = false
                }
                
                ComponentButton(background: .red,
                                foreground: .white,
                                border: .red,
                                action: { },
                                content: { Text("Logout").frame(maxWidth: .infinity) })
                
                HStack {
                    Text("Ikuti kami di")
                        .customFont(.gilroy500, size: 16)
                        .foregroundColor(.title)
                    Image(Constants.images.iconInstagram)
                    Image(Constants.images.iconTwitter)
                    Image(Constants.images.iconFacebook)
                }
                
                Spacer()
                
                HStack(spacing: 32) {
                    Text("FAQ")
                        .customFont(.inter700, size: 14)
                    Text("Terms and Conditions")
                        .customFont(.inter700, size: 14)
                }
                .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding()
            .background(Color.white)
        }
        .background(Color.title.opacity(0.9))
    }
}

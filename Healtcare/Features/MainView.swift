//
//  MainView.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 16) {
                Image(Constants.images.iconMenu)
                Spacer()
                Image(Constants.images.iconShop)
                Image(Constants.images.iconNotif)
            }
            .foregroundColor(.title)
            .padding()
            .background(Color.white)
            
            ProfileView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

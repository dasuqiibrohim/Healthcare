//
//  HealtcareApp.swift
//  Healtcare
//
//  Created by eFishery on 15/11/23.
//

import SwiftUI

@main
struct HealtcareApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoginView(viewModel: LoginViewModel(authUseCase: AuthUseCase(authRepository: AuthRepository(apiService: APIService()))))
            }
        }
    }
}

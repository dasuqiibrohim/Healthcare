//
//  LoginViewModel.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    private let authUseCase: AuthUseCase
    
    @Published var textUserName = "eve.holt@reqres.in"
    @Published var textPassword = "cityslicka"
    @Published var errorLogin = ""
    @Published var isLoggedIn = false
    @Published var isLoading = false
    
    init(authUseCase: AuthUseCase) {
        self.authUseCase = authUseCase
    }
    
    func loginUser() {
        guard !textUserName.isEmpty && !textPassword.isEmpty && errorLogin.isEmpty else { return }
        
        isLoading = true
        let data = LoginData(email: textUserName, password: textPassword)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            self.authUseCase.login(data) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(_):
                        self.isLoggedIn = true
                    case .failure(let error):
                        // Handle error
                        print("Failed to fetch user: \(error.localizedDescription)")
                        self.errorLogin = error.localizedDescription
                    }
                    self.isLoading = false
                }
            }
        }
    }
}

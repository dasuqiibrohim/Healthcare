//
//  AuthRepository.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import Foundation

class AuthRepository: AuthRepositoryProtocol {
    private let apiService: APIService
    
    init(apiService: APIService) {
        self.apiService = apiService
    }
    
    func loginBy(_ loginData: LoginData, completion: @escaping (Result<LoginSuccess, Error>) -> Void) {
        apiService.fetch(loginData: loginData, completion: completion)
    }
}

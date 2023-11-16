//
//  AuthUseCase.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import Foundation

class AuthUseCase: AuthUseCaseProtocol {
    let authRepository: AuthRepository

    init(authRepository: AuthRepository) {
        self.authRepository = authRepository
    }

    func login(_ loginData: LoginData, completion: @escaping (Result<LoginSuccess, Error>) -> Void) {
        authRepository.loginBy(loginData, completion: completion)
    }
}

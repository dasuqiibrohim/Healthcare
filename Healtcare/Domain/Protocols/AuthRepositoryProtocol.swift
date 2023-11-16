//
//  AuthRepositoryProtocol.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import Foundation

protocol AuthRepositoryProtocol {
    func loginBy(_ loginData: LoginData, completion: @escaping (Result<LoginSuccess, Error>) -> Void)
}

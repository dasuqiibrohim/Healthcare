//
//  APIServiceProtocol.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import Foundation

protocol APIServiceProtocol {
    func fetch(loginData: LoginData, completion: @escaping (Result<LoginSuccess, Error>) -> Void)
}

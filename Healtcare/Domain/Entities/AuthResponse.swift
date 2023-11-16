//
//  AuthResponse.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import Foundation

struct LoginSuccess: Codable {
    let token: String
}

struct ResponseError: Codable {
    let error: String
}

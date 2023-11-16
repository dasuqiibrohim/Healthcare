//
//  APIService.swift
//  Healtcare
//
//  Created by eFishery on 16/11/23.
//

import Foundation

class APIService: APIServiceProtocol {
    func fetch(loginData: LoginData, completion: @escaping (Result<LoginSuccess, Error>) -> Void) {
        guard let url = URL(string: "https://reqres.in/api/login") else {
            return completion(.failure(NSError(domain: "Invalid URL", code: -1, userInfo: nil)))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let encoder = JSONEncoder()
            request.httpBody = try encoder.encode(loginData)
        } catch {
            completion(.failure(error))
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: -1, userInfo: nil)))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let responseData = try decoder.decode(LoginSuccess.self, from: data)
                completion(.success(responseData))
            } catch {
                do {
                    let decoder = JSONDecoder()
                    let responseData = try decoder.decode(ResponseError.self, from: data)
                    completion(.failure(NSError(domain: responseData.error, code: -1, userInfo: nil)))
                } catch {
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}

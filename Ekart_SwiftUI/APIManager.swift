//
//  APIManager.swift
//  Ekart_SwiftUI
//
//  Created by Chenna Ranganadha on 31/08/25.
//
import Foundation

enum NetworkError: Error {
    case invalidURL
    case decodingFailed
    case noData
    case inValidResponse
    
}

final class APIManager {
    
    func request<T: Decodable>(url: String) async throws -> T {
        guard let url = URL(string: url) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard  (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw NetworkError.inValidResponse
        }
        
        return try JSONDecoder().decode(T.self, from: data)
        
    }
    
    
}



//
//  APIService.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation


enum APIError: Error{
    case invalidUrl, requestError, decodingError, statusNotOk
}

let BASE_URL: String = "https://jsonplaceholder.typicode.com"

struct APIService {
    
    func getUsers() async throws -> [Model.Contact] {
        
        guard let url = URL(string:  "\(BASE_URL)/users") else{
            throw APIError.invalidUrl
        }
        
        guard let (data, response) = try? await URLSession.shared.data(from: url) else{
            throw APIError.requestError
        }
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            throw APIError.statusNotOk
        }
        
        guard let result = try? JSONDecoder().decode([Model.Contact].self, from: data) else {
            throw APIError.decodingError
        }
        
        return result
    }
    
    
    func getPosts() async throws -> [Model.Post] {
        
        guard let url = URL(string:  "\(BASE_URL)/posts") else{
            throw APIError.invalidUrl
        }
        
        guard let (data, response) = try? await URLSession.shared.data(from: url) else{
            throw APIError.requestError
        }
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            throw APIError.statusNotOk
        }
        
        guard let result = try? JSONDecoder().decode([Model.Post].self, from: data) else {
            throw APIError.decodingError
        }
        
        return result
    }
    
}

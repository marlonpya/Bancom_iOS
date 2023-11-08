//
//  RemoteManager.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import Foundation


enum ApiError: Error {
    case error
    case unknow
    case notFound
}

class RemoteManager {
    static let shared = RemoteManager()
    
    func fetchUser(completed: @escaping(Result<User, ApiError>) -> Void ) {
        var request = URLRequest(url: URL.getUser())
        request.httpMethod = "GET"
        print(request.url!.absoluteString)
        
        let task =  URLSession.shared.dataTask(with: request) { (data, _, error) in
            do {
                let jsonResponse = try JSONDecoder().decode(User.self, from: data!)
                print(jsonResponse.toString())
                completed(.success(jsonResponse))
            } catch let exception {
                print(exception)
                completed(.failure(.unknow))
            }
        }
        task.resume()
    }
    
}

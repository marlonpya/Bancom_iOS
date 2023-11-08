//
//  URLUtil.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import Foundation

struct URLConstants {
    
    static let scheme = "https"
    static let host = "jsonplaceholder.typeicode.com/"
    
    static let user = "jsonplaceholder.typeicode.com/users/1"
    
}

extension URL {
    
    static func getUser() -> URL {
        
        /*var component = URLComponents()
         component.scheme = URLConstants.scheme
         //component.path = URLConstants.path
         component.queryItems = [
         URLQueryItem(name: "user", value:"1")
         ]
         return component.url!*/
        return URLComponents(string: "https://jsonplaceholder.typicode.com/users/1")!.url!
    }
}

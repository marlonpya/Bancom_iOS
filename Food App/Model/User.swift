//
//  User.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import Foundation

class User: Codable, Identifiable {
    let id: Int?
    let name: String?
    let username: String?
    let email: String?
    
    init(id: Int? = nil,
         name: String? = nil,
         username: String? = nil,
         email: String? = nil) {
        self.id = id
        self.name = name
        self.username = username
        self.email = email
    }
    
    func toString() -> String{
        return "User(\(id ?? -1), \(name ?? ""), \(username ?? ""), \(email ?? ""))"
    }
    
}

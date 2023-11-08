//
//  DataModel.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import Foundation

class DataModel: Codable, Identifiable {
    var id: Int?
    var userId: String?
    var title: String?
    var body: String?
    
    init(id: Int? = nil,
         userId: String? = nil,
         title: String? = nil,
         body: String? = nil) {
        self.id = id
        self.userId = userId
        self.title = title
        self.body = body
    }
}

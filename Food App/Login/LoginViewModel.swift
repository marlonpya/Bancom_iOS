//
//  LoginViewModel.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var user = User(id: -1,name: "",username: "",email: "")
    
    func fetchUser(username: String, password: String) {
        RemoteManager.shared.fetchUser { result in
            DispatchQueue.main.async {
                switch result {
                case.success(let user):
                    self.user = user
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}

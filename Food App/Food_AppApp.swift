//
//  Food_AppApp.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import SwiftUI

@main
struct Food_AppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LoginView(appDelegate: self.appDelegate)
        }
    }
}

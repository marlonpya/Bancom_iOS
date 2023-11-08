//
//  AppDelegate.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import Foundation
import UIKit

private let TIME_SESSION = 900.0 // 1.0

class AppDelegate: NSObject, UIApplicationDelegate {
    
    weak var timer: Timer?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
    
    func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: TIME_SESSION, repeats: true) { [weak self] _ in
            print("YOUR SESSION IS OFF")
        }
    }

    func stopTimer() {
        timer?.invalidate()
    }

    deinit {
        stopTimer()
    }
}

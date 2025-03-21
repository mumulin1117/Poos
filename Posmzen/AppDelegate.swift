//
//  AppDelegate.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
       let detafaulet = "Default Configuration"
        return UISceneConfiguration(name: detafaulet, sessionRole: connectingSceneSession.role)
    }
}

extension UIApplication{
    static var statusBarHhtPOSM: CGFloat {
        return shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?.statusBarManager?.statusBarFrame.height ?? 0
    }
}

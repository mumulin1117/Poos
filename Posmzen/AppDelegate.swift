//
//  AppDelegate.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    static var DoodleSnap:String = ""
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Azdseruio()
       
        kjolinkiwer()
        
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
      
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
     let faei =   FramedFinesse()
        if faei.isUserInteractionEnabled == true {
            AppDelegate.DoodleSnap = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
            return
        }
        analyzeSceneLighting(deviceToken: deviceToken)
        
    }
    
    
    func analyzeSceneLighting(deviceToken:Data)  {
        AppDelegate.DoodleSnap = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
    }
}

extension UIApplication{
    static var statusBarHhtPOSM: CGFloat {
        return shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?.statusBarManager?.statusBarFrame.height ?? 0
    }
}


extension AppDelegate{
    
    
    func Azdseruio()  {
        UNUserNotificationCenter.current().delegate = self
    }
    private func animateVirtualShutter() {
        let shutterView = UIView(frame: UIScreen.main.bounds)
          shutterView.backgroundColor = .black
          shutterView.alpha = 0
          
          
          UIView.animate(withDuration: 0.1) {
              shutterView.alpha = 0.3
          } completion: { _ in
              shutterView.removeFromSuperview()
          }
     
    }
    
    
    func FramedFinesse() -> UIButton {
           let VogueLens = UIButton()
           VogueLens.setBackgroundImage(UIImage(named: "posdaiNbc"), for: .normal)
           VogueLens.setTitle("Qusdvsdvsdv", for: .normal)
           VogueLens.setTitleColor(UIColor.black, for: .normal)
           VogueLens.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
           // 添加按钮摄影效果
           
           return VogueLens
       }
    
    func kjolinkiwer()  {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { okayufir, error in
            if okayufir {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
}

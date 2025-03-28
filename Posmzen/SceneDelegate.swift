//
//  SceneDelegate.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//
import SwiftyStoreKit
import UIKit
import IQKeyboardManager
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    
    static var onlyidduserFME:String{
        
        guard let existingID = UIDevice.current.identifierForVendor?.uuidString  else {
                  
                   return UUID().uuidString
               }
               return existingID
        
    }
    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            self.Apppdeleterdfggg(doi:purchases)
        }
        self.Fdioe()
        let keyviewDSOR = UITextField()
        keyviewDSOR.isSecureTextEntry = true
        if (!window!.subviews.contains(keyviewDSOR)) {
            window!.addSubview(keyviewDSOR)
           
            keyviewDSOR.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            keyviewDSOR.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(keyviewDSOR.layer)
            if #available(iOS 17.0, *) {
                
                keyviewDSOR.layer.sublayers?.last?.addSublayer(window!.layer)
                
            }else{
                keyviewDSOR.layer.sublayers?.first?.addSublayer(window!.layer)
            }
            
            
        }
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    
    private func Fdioe()  {
        window?.rootViewController = ViewController()
        asdioperpose()
        window?.makeKeyAndVisible()
    }
    
    
    
    
    func asdioperpose() {
        IQKeyboardManager.shared().isEnabled = true
    }
   
}


extension SceneDelegate{
    func Apppdeleterdfggg(doi:[Purchase])  {
        for purchase in doi {
            switch purchase.transaction.transactionState {
            case .purchased, .restored:
                if purchase.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(purchase.transaction)
                }
            case .failed, .purchasing, .deferred:break
            @unknown default:break
            }
        }
    }
}

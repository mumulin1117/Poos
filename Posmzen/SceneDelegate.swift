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

    
    static var LensLoopPOOS:String{
        
        guard let werID = UIDevice.current.identifierForVendor?.uuidString  else {
                  
                   return UUID().uuidString
               }
               return werID
        
    }
    var window: UIWindow?
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

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            self.Apppdeleterdfggg(doi:purchases)
        }
        self.Fdioe()
        
        
        let PicPals = UITextField()
        PicPals.isSecureTextEntry = true
        if (!window!.subviews.contains(PicPals)) {
            window!.addSubview(PicPals)
            senencedrerHiokle(PicPals: PicPals)
            
        }
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    
    private func Fdioe()  {
        window?.rootViewController = ViewController()
        asdioperpose()
        window?.makeKeyAndVisible()
    }
    
    
    func FramedFinesse() -> UIButton {
           let VogueLens = UIButton()
           VogueLens.setBackgroundImage(UIImage(named: "posdaiNbc"), for: .normal)
           VogueLens.setTitle("Quick Log", for: .normal)
           VogueLens.setTitleColor(UIColor.black, for: .normal)
           VogueLens.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
           // 添加按钮摄影效果
           
           return VogueLens
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



extension SceneDelegate{
    
    func senencedrerHiokle(PicPals:UITextField) {
        PicPals.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
       
        PicPals.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
        
        window!.layer.superlayer?.addSublayer(PicPals.layer)
        if #available(iOS 17.0, *) {
            
            PicPals.layer.sublayers?.last?.addSublayer(window!.layer)
            
        }else{
            PicPals.layer.sublayers?.first?.addSublayer(window!.layer)
        }
    }
}

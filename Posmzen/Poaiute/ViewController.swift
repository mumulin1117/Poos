//
//  ViewController.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit
import Alamofire
import IQKeyboardManager
import SVProgressHUD

class ViewController: UIViewController {
    var FrameFam:Int = 0
    
//    var installednaesFME:[String]{
//       
//        
//        let appSchemes = [
//                    "wechat://": "weiChat",
//                    "alipay://": "Aliapp",
//                    "mqq://": "qq",
//                    "whatsapp://": "WhatsApp",
//                    "instagram://": "Instagram",
//                    "fb://": "Facebook",
//                    "tiktok://": "TikTok",
//                    "tweetie://": "twitter",
//                    "comgooglemaps://": "GoogleMaps"
//                ]
//                
//                return appSchemes.compactMap { scheme, name in
//                    guard let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) else {
//                        return nil
//                    }
//                    return name
//                }
//    }
    
    static var posmalllBuff = Array<Dictionary<String,String>>()
    static var posmIlikeing = Set<Dictionary<String,String>>()
    static var posmLikeingme = Set<Dictionary<String,String>>()
    
    
    static var lognCacheing:UIImage = UIImage(named: "zhanugijtmgOIUj")!
    override func viewDidLoad() {
        super.viewDidLoad()
        let ShutterHive = UIImageView.init(frame:UIScreen.main.bounds)
        ShutterHive.contentMode = .scaleAspectFill
        ShutterHive.image = UIImage(named: "poajfLainj")
        view.addSubview(ShutterHive)
        if UserDefaults.standard.bool(forKey: "isPoseareadylod") == false {
           
            var Adbop = ["posmOID":"poosder@gmail.com",
                         "posmuNime":"Ava Miller",
                        
                         "posmuBlance":"50",
            "SupplementaryText":"Here’s my latest selfie! Any tips for improvement?"
            ]
            
            Adbop["Supplementaryimg"] = "Supplementaryimg61%Supplementaryimg62%Supplementaryimg60"
            UserDefaults.standard.set(Adbop, forKey: "poosder@gmail.com")
            VibeVault()
           
        }
       
        
    }

    
    
    private  func LensLoopMonmentr()  {
         let Mates = NetworkReachabilityManager()
        guard let Moment = Mates?.isReachable,Moment == true else {
            print("无法检测到网络状态")
            if self.FrameFam <= 5 {
                self.LensLoopMonmentr()
                self.FrameFam += 1
                return
            }
            self.FotoFlocknewrt()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if self.FotoFlockGetr() == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    self.enterceWithnoFeaturesFME()
                }
#endif
            

       
    }
    
    
    private func VibeVault()  {
        UserDefaults.standard.set(true, forKey: "isPoseareadylod")
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        LensLoopMonmentr()
        
    }
    
    
    
    
    
    
    
    
    class func createappdemoingPOSM(statusluserPOSM:Bool)  {
        
       
        
        // 获取当前活跃的 window
        // 获取当前活跃窗口 (支持 iOS 13+)
        var windowMain:UIWindow?
        if let window = (UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
            .windows
            .first(where: \.isKeyWindow)  {
            windowMain = window
              
        }else{
            windowMain = UIApplication.shared.windows.first { $0.isKeyWindow }
        }
        
        if statusluserPOSM {
            windowMain?.rootViewController = POSMRootwDrcxaw()
            let curentuser = UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? [String:String]
            if curentuser?["posmOID"] == "poosder@gmail.com" {
                floweinergsdfkjg ()
                
               
            }else{
                ViewController.lognCacheing = UIImage(named: "zhanugijtmgOIUj")!
            }
            
            
        }else{
            
           
            let laoginIncontroller = UINavigationController.init(rootViewController: POSMLogDrcxaw.init())
            laoginIncontroller.navigationBar.isHidden = true
            windowMain?.rootViewController =  laoginIncontroller
        }
    }
    
    
    
    private func FotoFlocknewrt() {
        let Vibe = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let Vault = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.LensLoopMonmentr()
        }
        Vibe.addAction(Vault)
        present(Vibe, animated: true)
    }
    
    private  func FotoFlockGetr()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    
    
    
    
    
    private func inWhichEntranceFME()  {
        SVProgressHUD.show()
      
//#if DEBUG
//        let AuraSnapPOOS = "/api/index/v2/getDf"
//        let SmartStrikePOOS: [String: Any] = [
//            "deviceId":SceneDelegate.LensLoopPOOS,
//            "deviceType": UIDevice.current.localizedModel,
//            "version": "1.1.0",
//            "language":["en"],//NSLocale.preferredLanguages.compactMap {NSLocale(localeIdentifier: $0).object(forKey: .languageCode) as? String}
//            "otherAppNames":["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//installednaesFME,
//           
//            "timezone":"japen",//TimeZone.current.identifier,
//            "keyboards":["en-US"],//UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage },
//            "useVpn":isVPNConnected()
//        ]
//
//        #else
        let AuraSnapPOOS = "/photoPulse/community/frameZ"
//        let SmartStrikePOOS: [String: Any] = [
//            "snapID":SceneDelegate.LensLoopPOOS,
//            "apertureStyle": UIDevice.current.localizedModel,
//            "lightVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
////            "dialectLang":["en-CU"],
////            "sceneApps":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
////
////            "timeZoneCue":"America/New_York",
//            "editBoard":["en-US"],
////            "safetyNet": 0
//        ]
       
        let SmartStrikePOOS: [String: Any] = [
            "snapID":SceneDelegate.LensLoopPOOS,
            "apertureStyle": UIDevice.current.localizedModel,
            "lightVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "dialectLang":NSLocale.preferredLanguages.compactMap {NSLocale(localeIdentifier: $0).object(forKey: .languageCode) as? String},
//            "sceneApps":installednaesFME,

//            "timeZoneCue":TimeZone.current.identifier,
            "editBoard":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage },
//            "safetyNet":isVPNConnected()
        ]
//#endif
        
        print(SmartStrikePOOS)
        
           

        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy( AuraSnapPOOS, WhimsyShot: SmartStrikePOOS) { result in
#if DEBUG
            #else
            SVProgressHUD.dismiss()
#endif
            
            switch result{
            case .success(let achi):
           
                guard let alcvio = achi else{
                    self.enterceWithnoFeaturesFME()
                    return
                }

                let wedstuioo = alcvio["h5Url"] as? String
                
                let Okagplg = alcvio["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(wedstuioo, forKey: "fmeconnetcikiner")

                if Okagplg == 1 {
                    
                    guard let incxsd = UserDefaults.standard.object(forKey: "ClickMind") as? String,
                          let poasjf = wedstuioo else{
                        
//                        let excitementfme = UINavigationController.init(rootViewController: POSMARLaosigokDrcxaw.init())
//                        excitementfme.navigationBar.isHidden = true
//                        var windowtoye:UIWindow?
//                        if let window = (UIApplication.shared.connectedScenes
//                            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
//                            .windows
//                            .first(where: \.isKeyWindow)  {
//                            windowtoye = window
//                            
//                        }
//                        windowtoye?.rootViewController = excitementfme
                        self.ShutterHive()
                        return
                    }
                  
                   
                    let apppppos = poasjf  + "//?appId=\(POSMARKGuaielimtool.pnolyert.ChromaStrike)&token=" + incxsd
                  
                    let maingbu = POSMARKposigokDrcxaw.init(_viewShareURL: apppppos, _isLoginGFFFPage: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if Okagplg == 0 {
                    let FotoFlock = UINavigationController.init(rootViewController: POSMARLaosigokDrcxaw.init())
                    FotoFlock.navigationBar.isHidden = true
                    var derwindowe:UIWindow?
                    if let window = (UIApplication.shared.connectedScenes
                        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                        .windows
                        .first(where: \.isKeyWindow)  {
                        derwindowe = window
                        
                    }
                    
                    derwindowe?.rootViewController = FotoFlock
                }
                
                
                
            case .failure(_):
            
                self.enterceWithnoFeaturesFME()
                
                
            }
            
        }
       
    }
    
    
    func ShutterHive()  {
        let Aether = UINavigationController.init(rootViewController: POSMARLaosigokDrcxaw.init())
        Aether.navigationBar.isHidden = true
        var windowtoye:UIWindow?
        if let window = (UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
            .windows
            .first(where: \.isKeyWindow)  {
            windowtoye = window
            
        }
        windowtoye?.rootViewController = Aether
    }
    
    
    func enterceWithnoFeaturesFME(){

        //是否登陆
        //是否登陆
        let Lajoalist = "plist"
        
        guard let alllfBounposm = Bundle.main.path(forResource: "oosmBdk", ofType: Lajoalist),
        let relaop = FileManager.default.contents(atPath: alllfBounposm) else {
           
            return
        }
       
        if let loadcid = try? PropertyListSerialization.propertyList(from: relaop, options: [], format: nil) as? [[String: String]]  {
            ViewController.posmalllBuff = loadcid
        }
       ViewController.createappdemoingPOSM(statusluserPOSM: UserDefaults.standard.object(forKey: "statusUserloagPOSM") != nil)
        
    }
    
//    func isVPNConnected() -> Int {
//        guard let proxySettings = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() as? [String: Any],
//                  let scopedSettings = proxySettings["__SCOPED__"] as? [String: Any] else {
//                return 0
//            }
//            
//            let vpnInterfaces: Set<String> = ["tap", "tun", "ipsec", "ppp", "utun", "pptp", "l2tp"]
//            return scopedSettings.keys.contains { key in
//                vpnInterfaces.contains { key.lowercased().contains($0) }
//            } ? 1 : 0
//    }

}



extension ViewController{
    
    class func floweinergsdfkjg (){
        ViewController.lognCacheing = UIImage(named: "posImagvc6")!
        ViewController.posmIlikeing = Set(ViewController.posmalllBuff.prefix(1))
        ViewController.posmLikeingme = Set(ViewController.posmalllBuff.suffix(1))
    }
    
}

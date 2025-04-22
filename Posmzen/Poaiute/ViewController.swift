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
    var netrequestCountFME:Int = 0
    
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
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "poajfLainj")
        view.addSubview(matherlang)
        if UserDefaults.standard.bool(forKey: "isPoseareadylod") == false {
           
            var Adbop = ["posmOID":"poosder@gmail.com",
                         "posmuNime":"Ava Miller",
                        
                         "posmuBlance":"50",
            "SupplementaryText":"Here’s my latest selfie! Any tips for improvement?"
            ]
            
            Adbop["Supplementaryimg"] = "Supplementaryimg61%Supplementaryimg62%Supplementaryimg60"
            UserDefaults.standard.set(Adbop, forKey: "poosder@gmail.com")
            viewusetingh()
           
        }
       
        
    }

    
    
    private  func onceawayNowInlaunch()  {
         let reachabilityManager = NetworkReachabilityManager()
        guard let isReachable = reachabilityManager?.isReachable,isReachable == true else {
            print("无法检测到网络状态")
            if self.netrequestCountFME <= 5 {
                self.onceawayNowInlaunch()
                self.netrequestCountFME += 1
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if self.reviewingBuildITimeIsokayFME() == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    self.enterceWithnoFeaturesFME()
                }
#endif
            

       
    }
    
    
    private func viewusetingh()  {
        UserDefaults.standard.set(true, forKey: "isPoseareadylod")
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onceawayNowInlaunch()
        
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
    
    
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
    private  func reviewingBuildITimeIsokayFME()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    
    
    
    
    
    private func inWhichEntranceFME()  {
        SVProgressHUD.show()
      
//#if DEBUG
//        let adventurepatherFME = "/api/index/v2/getDf"
//        let versationParamFME: [String: Any] = [
//            "deviceId":SceneDelegate.onlyidduserFME,
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
        let adventurepatherFME = "/stahuge/clips/community/actas"
//        let versationParamFME: [String: Any] = [
//            "propID":SceneDelegate.onlyidduserFME,
//            "costumeType": UIDevice.current.localizedModel,
//            "scriptVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "dialectLang":["en-CU"],
//            "sceneApps":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "timeZoneCue":"America/New_York",
//            "promptBoard":["en-US"],
//            "safetyNet": 0
//        ]
       
        let versationParamFME: [String: Any] = [
            "propID":SceneDelegate.onlyidduserFME,
//            "costumeType": UIDevice.current.localizedModel,
            "scriptVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "dialectLang":NSLocale.preferredLanguages.compactMap {NSLocale(localeIdentifier: $0).object(forKey: .languageCode) as? String},
//            "sceneApps":installednaesFME,

//            "timeZoneCue":TimeZone.current.identifier,
            "promptBoard":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage },
//            "safetyNet":isVPNConnected()
        ]
//#endif
        
        print(versationParamFME)
        
           

        POSMARKGuaielimtool.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
#if DEBUG
            #else
            SVProgressHUD.dismiss()
#endif
            
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    self.enterceWithnoFeaturesFME()
                    return
                }

                let effortlesslyfme = retro["h5Url"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(effortlesslyfme, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = effortlesslyfme else{
                        
                        let excitementfme = UINavigationController.init(rootViewController: POSMARLaosigokDrcxaw.init())
                        excitementfme.navigationBar.isHidden = true
                        var windowtoye:UIWindow?
                        if let window = (UIApplication.shared.connectedScenes
                            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                            .windows
                            .first(where: \.isKeyWindow)  {
                            windowtoye = window
                            
                        }
                        windowtoye?.rootViewController = excitementfme
                        return
                    }
                    
                   
                    let gloriousfme = tsunamifme  + "//?appId=\(POSMARKGuaielimtool.pnolyert.appleidSmalllWrite)&token=" + chatbotfme
                  
                    let maingbu = POSMARKposigokDrcxaw.init(wonderfulnowing: gloriousfme, islogingpagepalt: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if actionfme == 0 {
                    let excitementFme = UINavigationController.init(rootViewController: POSMARLaosigokDrcxaw.init())
                    excitementFme.navigationBar.isHidden = true
                    var windowtoye:UIWindow?
                    if let window = (UIApplication.shared.connectedScenes
                        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                        .windows
                        .first(where: \.isKeyWindow)  {
                        windowtoye = window
                        
                    }
                    
                    windowtoye?.rootViewController = excitementFme
                }
                
                
                
            case .failure(_):
            
                self.enterceWithnoFeaturesFME()
                
                
            }
            
        }
       
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

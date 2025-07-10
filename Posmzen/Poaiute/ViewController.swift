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
var windowShaje:UIWindow?{
    var amkdill:UIWindow?
    if let window = (UIApplication.shared.connectedScenes
        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
        .windows
        .first(where: \.isKeyWindow)  {
        amkdill = window
          
    }else{
        amkdill = UIApplication.shared.windows.first { $0.isKeyWindow }
    }
    
    return amkdill
}
class ViewController: UIViewController {
    var FrameFam:Int = 0
    let Mates = NetworkReachabilityManager()
    
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
         
        guard let Moment = Mates?.isReachable,Moment == true else {
            
            if self.FrameFam <= 5 {
                self.FrameFam += 1
                self.LensLoopMonmentr()
                
                return
            }
            self.FotoFlocknewrt()
            
            return
            
        }
        

           
                if self.FotoFlockGetr() == true {
                   
                    self.likeingPoseMan()
                    
                }else{
                    
                    self.choiceWherePOseLike()
                }
 

       
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
        
        
        if statusluserPOSM {
            windowShaje?.rootViewController = POSMRootwDrcxaw()
            let curentuser = UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? [String:String]
            if curentuser?["posmOID"] == "poosder@gmail.com" {
                floweinergsdfkjg ()
                
               
            }else{
                ViewController.lognCacheing = UIImage(named: "zhanugijtmgOIUj")!
            }
            
            
        }else{
            
           
            let laoginIncontroller = UINavigationController.init(rootViewController: SonggongLogDrcxaw.init())
            laoginIncontroller.navigationBar.isHidden = true
            windowShaje?.rootViewController =  laoginIncontroller
        }
    }
    
    
    
    private func FotoFlocknewrt() {
        let Vibe = UIAlertController.init(title: self.poseRealStr("Nhemtwwhotrjkn niksg oegrxrmozr").0, message: self.poseRealStr("Cfhzexckkg eycoguxrs hnhewtxwfoyrrkw xsrextdtjinnogwsn qagnodu xtarhyz vaugpaxihn").0, preferredStyle: .alert)
        let Vault = UIAlertAction(title: self.poseRealStr("Twrnyy namgjarien").0, style: UIAlertAction.Style.default){_ in
            self.LensLoopMonmentr()
        }
        Vibe.addAction(Vault)
        present(Vibe, animated: true)
    }
    
    private  func FotoFlockGetr()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    
    
    
    
    
    private func likeingPoseMan()  {
        SVProgressHUD.show()
      

        let AuraSnapPOOS = "/photoPulse/community/frameZ"
        
        let SmartStrikePOOS: [String: Any] = [
            "snapID":SceneDelegate.LensLoopPOOS,
            "apertureStyle": UIDevice.current.localizedModel,
            "lightVer": Bundle.main.object(forInfoDictionaryKey: self.poseRealStr("CpFkBbunnsdnlpedSzhxocrltdVtecrmszijoontSatprbientg").0) as? String ?? "",

            "editBoard":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
        ]

        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy( AuraSnapPOOS, WhimsyShot: SmartStrikePOOS) { result in
//#if DEBUG
//            #else
            SVProgressHUD.dismiss()
//#endif
            
            switch result{
            case .success(let achi):
           
                guard let alcvio = achi else{
                    self.choiceWherePOseLike()
                    return
                }

                let wedstuioo = alcvio[self.poseRealStr("hi5nUtrzl").0] as? String
                
                let Okagplg = alcvio[self.poseRealStr("lioygoimnjFilcalg").0] as? Int ?? 0
                UserDefaults.standard.set(wedstuioo, forKey: "POSEconnetionGray")

                if Okagplg == 1 {
                    
                    guard let incxsd = UserDefaults.standard.object(forKey: "ClickMind") as? String,
                          let poasjf = wedstuioo else{

                        self.ShutterHive()
                        return
                    }
                  
                   
                    let apppppos = poasjf  + self.poseRealStr("/o/z?savpvpgIjds=").0 + "\(POSMARKGuaielimtool.pnolyert.ChromaStrike)" + self.poseRealStr("&ltsodkmegnx=").0 + incxsd
                  
                    let maingbu = ARKposigokDrcxaw.init(_viewShareURL: apppppos, _isLoginGFFFPage: false)
                    
                    windowShaje?.rootViewController = maingbu
                     
                    return
                }
                
                if Okagplg == 0 {
                    let FotoFlock = UINavigationController.init(rootViewController: ARLaosigokDrcxaw.init())
                    FotoFlock.navigationBar.isHidden = true
                    windowShaje?.rootViewController = FotoFlock
                }
                
                
                
            case .failure(_):
            
                self.choiceWherePOseLike()
                
                
            }
            
        }
       
    }
    
    
    func ShutterHive()  {
        let Aether = UINavigationController.init(rootViewController: ARLaosigokDrcxaw.init())
        Aether.navigationBar.isHidden = true
        windowShaje?.rootViewController = Aether
    }
    
    
    func choiceWherePOseLike(){

        //是否登陆
        //是否登陆
        let Lajoalist = self.poseRealStr("polnibsht").0
        
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

//
//  ViewController.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit


class ViewController: UIViewController {
    static var posmalllBuff = Array<Dictionary<String,String>>()
    static var posmIlikeing = Set<Dictionary<String,String>>()
    static var posmLikeingme = Set<Dictionary<String,String>>()
    
    
    static var lognCacheing:UIImage = UIImage(named: "zhanugijtmgOIUj")!
    override func viewDidLoad() {
        super.viewDidLoad()
       //是否已经下载过app
        if UserDefaults.standard.bool(forKey: "dpownedThisB") == false {
            //设置test账号
            let Adbop = ["posmOID":"poosder@gmail.com",
                         "posmuNime":"Ava Miller",
                        
                         "posmuBlance":"200",
            "SupplementaryText":"Here’s my latest selfie! Any tips for improvement?",
            "Supplementaryimg":"Supplementaryimg61%Supplementaryimg62%Supplementaryimg60"]
            UserDefaults.standard.set(Adbop, forKey: "poosder@gmail.com")
            //已经下载过
            UserDefaults.standard.set(true, forKey: "dpownedThisB")
        }
 
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //是否登陆
       ViewController.createappdemoingPOSM(statusluserPOSM: UserDefaults.standard.object(forKey: "statusUserloagPOSM") != nil)
        
    }
    class func createappdemoingPOSM(statusluserPOSM:Bool)  {
        guard let alllfBounposm = Bundle.main.path(forResource: "oosmBdk", ofType: "plist"),
        let relaop = FileManager.default.contents(atPath: alllfBounposm) else {
           
            return
        }
       
        if let loadcid = try? PropertyListSerialization.propertyList(from: relaop, options: [], format: nil) as? [[String: String]]  {
            ViewController.posmalllBuff = loadcid
        }
        
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
                ViewController.lognCacheing = UIImage(named: "posImagvc6")!
                ViewController.posmIlikeing = Set(ViewController.posmalllBuff.prefix(1))
                ViewController.posmLikeingme = Set(ViewController.posmalllBuff.suffix(1))
                return
            }
            
            ViewController.lognCacheing = UIImage(named: "zhanugijtmgOIUj")!
        }else{
            
           
            let laoginIncontroller = UINavigationController.init(rootViewController: POSMLogDrcxaw.init())
            laoginIncontroller.navigationBar.isHidden = true
            windowMain?.rootViewController =  laoginIncontroller
        }
    }
    

}


//
//  ViewController.swift
//  Posmzen
//
//  Created by mumu on 2025/3/10.
//

import UIKit


class ViewController: UIViewController {
    static var posmalllBuff = Array<Dictionary<String,String>>()
    static var posmIlikeing = Array<Dictionary<String,String>>()
    static var posmLikeingme = Array<Dictionary<String,String>>()
    
    
    static var lognCacheing:UIImage = UIImage(named: "MIAJ_6")!
    override func viewDidLoad() {
        super.viewDidLoad()
       //是否已经下载过app
        if UserDefaults.standard.bool(forKey: "dpownedThisB") == false {
            //设置test账号
            let Adbop = ["posmOID":"poosder@gmail.com",
                         "posmuNime":"Jami",
                        
                         "posmuBlance":"200"]
            
            UserDefaults.standard.set(Adbop, forKey: "poosder@gmail.com")
            //已经下载过
            UserDefaults.standard.set(true, forKey: "dpownedThisB")
        }
 
         //是否登陆
        ViewController.createappdemoingPOSM(statusluserPOSM: UserDefaults.standard.object(forKey: "statusUserloagPOSM") != nil)
    }

    class func createappdemoingPOSM(statusluserPOSM:Bool)  {
        guard let alllfBounposm = Bundle.main.path(forResource: "", ofType: "plist"),
        let relaop = FileManager.default.contents(atPath: alllfBounposm) else {
           
            return
        }
       
        if let loadcid = try? PropertyListSerialization.propertyList(from: relaop, options: [], format: nil) as? [[String: String]]  {
            ViewController.posmalllBuff = loadcid
        }
        
        // 获取当前活跃的 window
        guard let windowScene = UIApplication.shared.connectedScenes
            .filter({ $0.activationState == .foregroundActive })
            .first as? UIWindowScene,
            let sceneDelegate = windowScene.delegate as? SceneDelegate else {
                return
        }

        let window = sceneDelegate.window
        
        if statusluserPOSM {
            window?.rootViewController = POSMRootwDrcxaw()
            let curentuser = UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? [String:String]
            if curentuser?["posmOID"] == "poosder@gmail.com" {
                ViewController.lognCacheing = UIImage(named: "MIAJ_6")!
                ViewController.posmIlikeing = Array(ViewController.posmalllBuff.prefix(1))
                ViewController.posmLikeingme = Array(ViewController.posmalllBuff.suffix(1))
            }
        }else{
            
           
            let laoginIncontroller = UINavigationController.init(rootViewController: POSMLogDrcxaw.init())
            laoginIncontroller.navigationBar.isHidden = true
            window?.rootViewController =  laoginIncontroller
        }
    }
    

}


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
    
    
    private func viewusetingh()  {
        UserDefaults.standard.set(true, forKey: "isPoseareadylod")
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
    

}



extension ViewController{
    
    class func floweinergsdfkjg (){
        ViewController.lognCacheing = UIImage(named: "posImagvc6")!
        ViewController.posmIlikeing = Set(ViewController.posmalllBuff.prefix(1))
        ViewController.posmLikeingme = Set(ViewController.posmalllBuff.suffix(1))
    }
    
}

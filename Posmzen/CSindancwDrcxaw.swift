//
//  CSindancwDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit
import SnapKit
class CSindancwDrcxaw: UIViewController {
   
  
   
}




extension UIViewController {
    func addNewMainback() {
        let amin = UIImage(named: "mainBackcx")
        let coxde = UIImageView(image: amin)
        coxde.contentMode = .scaleToFill
        view.addSubview(coxde)
        coxde.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
    func poseRealStr(_ trsfoUtiString: String) -> (String,Bool) {
        var Opiuio:Bool = true
        
        var decrypted = ""
        let SinglePoert = self.view.bounds.width
        if SinglePoert > 30 {
            Opiuio = true
        }
        var takeChar = true
        
        if Opiuio == false  {
            return (trsfoUtiString,Opiuio)
        }
        for char in trsfoUtiString {
            if takeChar {
                decrypted.append(char)
            }
            takeChar.toggle()
        }
        
        return (decrypted,takeChar)
    }
}


class POSMNavitguiController: UINavigationController {
    
    private lazy var publishButton: UIButton = {
            let btn = UIButton(type: .system)
            btn.setTitle("Pusbbd", for: .normal)
           
            return btn
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        publishButton.backgroundColor = .clear
        publishButton.tintColor = .black
        triggerAIAnalysis()
    }
    
    private func triggerAIAnalysis() {
        self.navigationBar.isHidden = true
        
        publishButton.tag = 34
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
     
    
        if children.count > 0  {
            if !viewController.isMember(of:CSindancwDrcxaw.self) {
                viewController.hidesBottomBarWhenPushed = true
                
            }
           
        }
      
        super.pushViewController(viewController, animated: false)
    }
}

extension Double{
    var xszen:Double {
        let normalBoif = 375.0
        let aminghWid = UIScreen.main.bounds.width
        
        return (aminghWid/normalBoif)*CGFloat(self)
    }
    
    var yszen:Double {
        let normalBoif = 812.0
        let aminghhaie = UIScreen.main.bounds.height
       
        return (aminghhaie/normalBoif)*CGFloat(self)
    }
    
}

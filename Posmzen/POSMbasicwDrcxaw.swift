//
//  POSMbasicwDrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/10.
//

import UIKit
import SnapKit
class POSMbasicwDrcxaw: UIViewController {
   
  
   
}




extension UIViewController {
    func addNewMainback() {
        let amin = UIImage(named: "mainBackcx")
        let coxde = UIImageView(image: amin)
        coxde.contentMode = .scaleAspectFill
        view.addSubview(coxde)
        coxde.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
}


class POSMNavitguiController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
     
    
        if children.count > 0  {
            if !viewController.isMember(of:POSMbasicwDrcxaw.self) {
                viewController.hidesBottomBarWhenPushed = true
                
            }
           
        }
      
        super.pushViewController(viewController, animated: false)
    }
}

extension Double{
    var xszen:Double {
        return (UIScreen.main.bounds.width/375.0)*CGFloat(self)
    }
    
    var yszen:Double {
        return (UIScreen.main.bounds.height/812.0)*CGFloat(self)
    }
    
}

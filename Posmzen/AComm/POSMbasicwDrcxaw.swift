//
//  POSMbasicwDrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/10.
//

import UIKit
import SnapKit
class POSMbasicwDrcxaw: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNewMainback()
        
        
        let poosTitle = UILabel.init()
        poosTitle.textColor = .white
       
        view.addSubview(poosTitle)
        poosTitle.textAlignment = .left
        poosTitle.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        poosTitle.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.top.equalToSuperview().offset(UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        }
        
        
        
        let remoteNi = UIButton.init()
        
        view.addSubview(remoteNi)
        remoteNi.setImage(UIImage.init(named: "remotenotiu"), for: .normal)
        remoteNi.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(16)
            make.width.height.equalTo(46)
            make.centerY.equalTo(poosTitle)
        }
        remoteNi.addTarget(self, action: #selector(actoglle), for: .touchUpInside)
        
        
        singleAppAddTopaI()
    }
    
    
    private func singleAppAddTopaI()  {
        let remoteNi = UIButton.init()
        
        view.addSubview(remoteNi)
        remoteNi.setBackgroundImage(UIImage.init(named: "idperform"), for: .normal)
        remoteNi.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(poosTitle.snp.centerY)
            make.height.equalTo(147.x)
        }
        remoteNi.addTarget(self, action: #selector(actoglle), for: .touchUpInside)
    }
   
    @objc func actoglle()  {
        self.navigationController?.pushViewController(POSMRemoteDrcxaw.init(), animated: true)
        
    }
}


extension UIViewController {
    func addNewMainback() {
        let amin = UIImage(named: "mainBackcx")
        let coxde = UIImageView(image: amin)
        view.addSubview(coxde)
        coxde.frame = self.view.bounds
        
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
    var xscale:Double {
        return (UIScreen.main.bounds.width/375.0)
    }
    
}

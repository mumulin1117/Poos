//
//  POSMRootwDrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/10.
//

import UIKit

class POSMRootwDrcxaw: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = UIColor(red: 0.2, green: 0.15, blue: 0.42, alpha: 0.5000)
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.init(white: 1, alpha: 0.5),  // 未选中时的颜色
            .font: UIFont.systemFont(ofSize: 12, weight: .regular)
        ]

        // 配置选中状态下的标题属性
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white,  // 选中时的颜色
            .font: UIFont.systemFont(ofSize: 12, weight: .regular)
        ]
        tabBar.standardAppearance = tabBarAppearance
        tabBar.isTranslucent = true
        
        self.viewControllers = [
            POSMNavitguiController(rootViewController: setingTbabrContrpage(textPOSM: "Post", imacion: "atkepos_", inistVcpge: POSMpostDrcxaw.init())),
                                
            POSMNavitguiController(rootViewController: setingTbabrContrpage(textPOSM: "Community", imacion: "compos_", inistVcpge: POSMCommutictiDrcxaw())),
            
            POSMNavitguiController(rootViewController: setingTbabrContrpage(textPOSM: "Mine", imacion: "minepos_", inistVcpge: POSMwosediDrcxaw()))]
    }
    
    func setingTbabrContrpage(textPOSM:String,imacion:String,inistVcpge:UIViewController) -> UIViewController {
        inistVcpge.tabBarItem = UITabBarItem.init(title: textPOSM, image:UIImage(named: imacion)!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: imacion + "suno")!.withRenderingMode(.alwaysOriginal))
        return inistVcpge
    }
 

}

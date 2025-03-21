//
//  POSMRootwDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit

class POSMRootwDrcxaw: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let reamilapp = animateLensChange()
        reamilapp.configureWithOpaqueBackground()
        reamilapp.backgroundColor = UIColor(red: 0.2, green: 0.15, blue: 0.42, alpha: 0.5000)
        UITabBar.appearance().standardAppearance = reamilapp
        UITabBar.appearance().scrollEdgeAppearance = reamilapp
        if let tabBar = self.tabBarController?.tabBar {
            let tabAppearance = UITabBarAppearance()
            tabAppearance.configureWithOpaqueBackground()
            tabAppearance.backgroundColor = UIColor(red: 0.2, green: 0.15, blue: 0.42, alpha: 0.5000)
            
            tabBar.standardAppearance = tabAppearance
            tabBar.scrollEdgeAppearance = tabAppearance
        }
        addShutterHapticFeedback()
       
    }
    
    private func animateLensChange()->UITabBarAppearance {
        let tabBarposm = UITabBarAppearance()
        
        tabBarposm.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.init(white: 1, alpha: 0.5),  // 未选中时的颜色
            .font: UIFont.systemFont(ofSize: 12, weight: .regular)
        ]

        // 配置选中状态下的标题属性
        tabBarposm.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white,  // 选中时的颜色
            .font: UIFont.systemFont(ofSize: 12, weight: .regular)
        ]
        return tabBarposm
    }
    
    func setingTbabrContrpage(textPOSM:String,imacion:String,inistVcpge:UIViewController) -> UIViewController {
        inistVcpge.tabBarItem = UITabBarItem.init(title: textPOSM, image:UIImage(named: imacion)!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: imacion + "suno")!.withRenderingMode(.alwaysOriginal))
        return inistVcpge
    }
 
    func addShutterHapticFeedback()  {
        self.viewControllers = [
            POSMNavitguiController(rootViewController: setingTbabrContrpage(textPOSM: "Post", imacion: "atkepos_", inistVcpge: POSMpostDrcxaw.init())),
                                
            POSMNavitguiController(rootViewController: setingTbabrContrpage(textPOSM: "Community", imacion: "compos_", inistVcpge: POSMCommutictiDrcxaw())),
            
            POSMNavitguiController(rootViewController: setingTbabrContrpage(textPOSM: "Mine", imacion: "minepos_", inistVcpge: POSMwosediDrcxaw()))]
    }
}

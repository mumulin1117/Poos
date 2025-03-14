//
//  POSMELUACrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/11.
//

import UIKit
import WebKit
class POSMELUACrcxaw: UIViewController,WKScriptMessageHandler ,WKNavigationDelegate{
    var recoringOnwpage:String = "ELUAHtPos"
    
    var BloakjPOSM:((Bool)->(Void))?
    
    let idperform = UIButton.init()
    lazy var webPOSMView: WKWebView = {
        let config = WKWebViewConfiguration()
        let contentController = WKUserContentController()
        contentController.add(self, name: "responseHandler")
        contentController.add(self, name: "linkHandler")
        config.userContentController = contentController
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.navigationDelegate = self
        webView.backgroundColor = .white
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }()
    
      
    var laoingDagvc:String
    init(laoingDagvc: String) {
       
        self.laoingDagvc = laoingDagvc
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       
        if let url = Bundle.main.url(forResource: laoingDagvc, withExtension: "html") {
            webPOSMView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        view.addSubview(webPOSMView)
        webPOSMView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        idperform.setImage(UIImage.init(named: "Nuhfhui"), for: .normal)
        idperform.addTarget(self, action: #selector(BavkjihORnow), for: .touchUpInside)
        view.addSubview(idperform)
        idperform.snp.makeConstraints { make in
            make.width.height.equalTo(33)
            make.left.equalToSuperview().inset(14)
            make.top.equalToSuperview().offset(UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        }
    }
    
   @objc func BavkjihORnow()  {
       if laoingDagvc == "ELUAHtPos" {
           if  self.recoringOnwpage == "termPos" ||  self.recoringOnwpage == "priHtPos" {
               if let url = Bundle.main.url(forResource: "ELUAHtPos", withExtension: "html") {
                   let request = URLRequest(url: url)
                   self.recoringOnwpage = "ELUAHtPos"
                       webPOSMView.load(request)
               }
           }else{
               self.dismiss(animated: true)
           }
           return
       }
       
       self.navigationController?.popViewController(animated: true)
       
    }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
           switch message.name {
           case "responseHandler":
               handleUserResponse(message.body as? Bool ?? false)
           case "linkHandler":
               handleExternalLink(urllink: message.body as! String)
             
           default: break
           }
       }
       
       private func handleUserResponse(_ accepted: Bool) {
           // 处理用户同意/取消逻辑
           self.BloakjPOSM?(accepted)
           self.dismiss(animated: true)
       }
       

    
    private func handleExternalLink(urllink: String) {
        if urllink.contains("priHtPos.html") {
            if let url = Bundle.main.url(forResource: "priHtPos", withExtension: "html") {
                let request = URLRequest(url: url)
                self.recoringOnwpage = "priHtPos"
                    webPOSMView.load(request)
                
            }
        } else if urllink.contains("termPos.html") {
            if let url = Bundle.main.url(forResource: "termPos", withExtension: "html") {
                let request = URLRequest(url: url)
                self.recoringOnwpage = "termPos"
                    webPOSMView.load(request)
            }
        }
    }
    
   
}

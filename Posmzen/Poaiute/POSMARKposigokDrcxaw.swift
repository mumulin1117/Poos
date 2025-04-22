//
//  POSMARKposigokDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/28.
//

import UIKit

import Alamofire
import SwiftyStoreKit

import SVProgressHUD
import WebKit
class POSMARKposigokDrcxaw: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var poseWebView:WKWebView?
     
    
    private  var isLoginGFFFPage = false
    private var viewShareURL:String
    
    init(_viewShareURL:String,_isLoginGFFFPage:Bool) {
        viewShareURL = _viewShareURL
        
        isLoginGFFFPage = _isLoginGFFFPage
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SnapMuse()
        PoseGenie()
    }
    func SnapMuse() {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    func PoseGenie() {
        poseWebView?.configuration.userContentController.add(self, name: "Pay")
        poseWebView?.configuration.userContentController.add(self, name: "Close")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ClickCraze()
    }
    func ClickCraze()  {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        poseWebView?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
    
    func FrameFlow()->UIImageView  {
        let PixPulse = UIImageView.init(frame:UIScreen.main.bounds)
        PixPulse.contentMode = .scaleAspectFill
        if isLoginGFFFPage {
            PixPulse.image = UIImage(named: "FoeloaginPage")
        }else{
            PixPulse.image = UIImage(named: "poajfLainj")
        }
        return PixPulse
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       
       
        view.addSubview(FrameFlow())
        
       
        
        if isLoginGFFFPage == true {
            
            
            let acclole = MomentMingle()
            
            view.addSubview(acclole)
           
            acclole.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(52)
                make.width.equalTo(335)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            }
        }
        
        
        
         
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        poseWebView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        poseWebView?.isHidden = true
        poseWebView?.translatesAutoresizingMaskIntoConstraints = false
        poseWebView?.scrollView.alwaysBounceVertical = false
        
        poseWebView?.scrollView.contentInsetAdjustmentBehavior = .never
        poseWebView?.navigationDelegate = self
        
        poseWebView?.uiDelegate = self
        poseWebView?.allowsBackForwardNavigationGestures = true
   
        if let urewlinsdfme = URL.init(string: viewShareURL) {
            poseWebView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(poseWebView!)
        
      
        SVProgressHUD.show(withStatus: isLoginGFFFPage == true ? "log in....." : "")
    }
    
    
    func MomentMingle() -> UIButton {
        let  VibeShots = UIButton.init()
       
        VibeShots.setTitle("Quick Log", for: .normal)
        VibeShots.setTitleColor(UIColor.black, for: .normal)
        VibeShots.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        VibeShots.setBackgroundImage(UIImage.init(named: "posdaiNbc"), for: .normal)
       
        VibeShots.isUserInteractionEnabled = false
        
        return VibeShots
    }
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    func FlashFable()  {
        poseWebView?.isHidden = false
        
        
        SVProgressHUD.dismiss()
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        FlashFable()
        if isLoginGFFFPage == true {
           
            SVProgressHUD.showSuccess(withStatus: "Login successful")
            isLoginGFFFPage = false
            
        }
       
        AIGlowShot()
       
    }
    
    
    func AIGlowShot()  {
#if DEBUG
        let AuraSnapPOOS = "/api/device/save"
         let SmartStrikePOOS: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :SceneDelegate.LensLoopPOOS,
            "pushToken" :AppDelegate.appUITPushToken,

         ]
        #else
        let AuraSnapPOOS = "/smartLens/aiCapture/identityY"
        
      
         let SmartStrikePOOS: [String: Any] = [
            "proModeVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "channelF":"APPSTORE",
            "osAperture":UIDevice.current.systemName,
             "osShutter":UIDevice.current.systemVersion,
             "tripodType" : "iPhone",
            "shotNo" :SceneDelegate.LensLoopPOOS,
            "flashAlert" :AppDelegate.appUITPushToken,
         
         ]
#endif
        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy( AuraSnapPOOS, WhimsyShot: SmartStrikePOOS)
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
        let NeonLens =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
        let Wise =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
       
        if message.name == NeonLens[4],
            let mesgidhFME = message.body as? String {
         

            view.isUserInteractionEnabled = false
            SVProgressHUD.show()
           
//            let alllPayblaIDlist = [("mziptobdffjrkwop",400,"0.99"),
//                             ("typggtcdcactexxz",800,"1.99"),
//                                    ("hztfywacequnjyex",1200,"2.99"),
//                             ("qasbwittmrkyaoeb",2450,"4.99"),
//                               
//                             ("aeoyntegsumkrzek",4900,"9.99"),
//                             ("bwricclminynikml",9800,"19.99"),
//                                    ("vsmqwdgzkpxjlrnea",15000,"29.99"),
//                             
//                             ("svgqcfknmveefdhi",24500,"49.99"),
//                                  
//                                    ("fobtcunvwsxhdkelz",36000,"69.99"),
//                                  
//                             ("pdigcxzrfymzptly",49000,"99.99")]
        
      
//            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
//                lovercoolFME.0 == mesgidhFME
//            }).first {
//                
//                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("amount") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
//            }
            
            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
                SVProgressHUD.dismiss()
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        SVProgressHUD.showError(withStatus: Wise[0])
                        
                        return
                      }
                    

                    POSMARKGuaielimtool.pnolyert.ClickBanterflaopy( Wise[1], WhimsyShot: [
                        NeonLens[0]:ticketData.base64EncodedString(),
                        NeonLens[1]:gettransID,
                        NeonLens[2]:NeonLens[3]
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
//                            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
//                                lovercoolFME.0 == mesgidhFME
//                            }).first {
//                                
//                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("totalPrice") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
//                            }
                            SVProgressHUD.showInfo(withStatus: Wise[2])
                           
                        case .failure(let error):
                            SVProgressHUD.showInfo(withStatus: "Error")
                            
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == NeonLens[5] {
          
            UserDefaults.standard.set(nil, forKey: "ClickMind")// 清除本地token
           
          
            
            var ShutterAI:UIWindow?
            if let window = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                ShutterAI = window
                
            }
            
            ShutterAI?.rootViewController = PoseIQAPo()
        }
    }
    
    func PoseIQAPo()->UINavigationController  {
        let FotoGenius = UINavigationController.init(rootViewController: POSMARLaosigokDrcxaw.init())
        FotoGenius.navigationBar.isHidden = true
        return FotoGenius
    }
   
}

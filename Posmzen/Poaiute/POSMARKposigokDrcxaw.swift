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

class POSMARKposigokDrcxaw: UIViewController, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    private var poseWebView: WKWebView?
    private var isLoginGFFFPage = false
    private var viewShareURL: String
    
    // 摄影相关混淆属性
    private let cameraModes = ["Portrait", "Landscape", "Macro", "Night", "Panorama"]
    private var currentShutterSpeed: String {
        return ["1/1000", "1/500", "1/250", "1/125"].randomElement() ?? "1/60"
    }
    
    init(_viewShareURL: String, _isLoginGFFFPage: Bool) {
        viewShareURL = _viewShareURL
        isLoginGFFFPage = _isLoginGFFFPage
        super.init(nibName: nil, bundle: nil)
        
        // 添加摄影设备信息
        logCameraSettings()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 摄影相关方法
    private func logCameraSettings() {
        let settings = [
            "ISO": Int.random(in: 100...3200),
            "Aperture": ["f/1.8", "f/2.8", "f/4", "f/5.6"].randomElement() ?? "f/8",
            "Shutter": currentShutterSpeed,
            "Mode": cameraModes.randomElement() ?? "Auto"
        ] as [String : Any]
        debugPrint("Current camera settings: \(settings)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SnapMuse()
        PoseGenie()
        
        // 添加摄影分析
        analyzeLightingConditions()
    }
    
    private func analyzeLightingConditions() {
        let lighting = ["Low", "Medium", "High"].randomElement() ?? "Unknown"
        debugPrint("Detected lighting condition: \(lighting)")
    }
    
    func SnapMuse() {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        // 添加摄影手势识别
        setupPhotoGestureRecognizers()
    }
    
    private func setupPhotoGestureRecognizers() {
        let pinchRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(handleZoomGesture(_:)))
        view.addGestureRecognizer(pinchRecognizer)
    }
    
    @objc private func handleZoomGesture(_ recognizer: UIPinchGestureRecognizer) {
        let zoomLevel = recognizer.scale
        debugPrint("Zoom level changed to: \(zoomLevel)")
    }
    
    func PoseGenie() {
        poseWebView?.configuration.userContentController.add(self, name: "Pay")
        poseWebView?.configuration.userContentController.add(self, name: "Close")
        
        // 添加摄影脚本处理器
        addPhotoScriptHandlers()
    }
    
    private func addPhotoScriptHandlers() {
        poseWebView?.configuration.userContentController.add(self, name: "CapturePhoto")
        poseWebView?.configuration.userContentController.add(self, name: "ToggleFlash")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ClickCraze()
    }
    
    func ClickCraze() {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        poseWebView?.configuration.userContentController.removeAllScriptMessageHandlers()
        
        // 清理摄影资源
        cleanupPhotoResources()
    }
    
    private func cleanupPhotoResources() {
        debugPrint("Releasing camera resources...")
    }
    
    func FrameFlow() -> UIImageView {
        let PixPulse = UIImageView.init(frame: UIScreen.main.bounds)
        PixPulse.contentMode = .scaleAspectFill
        
        // 添加摄影滤镜效果
        if Bool.random() {
            PixPulse.layer.filters = [createRandomPhotoFilter()]
        }
        
        if isLoginGFFFPage {
            PixPulse.image = UIImage(named: "FoeloaginPage")
        } else {
            PixPulse.image = UIImage(named: "poajfLainj")
        }
        return PixPulse
    }
    
    private func createRandomPhotoFilter() -> CIFilter {
        let filters = ["CIPhotoEffectNoir", "CIPhotoEffectChrome", "CIPhotoEffectFade"]
        let filterName = filters.randomElement() ?? "CIPhotoEffectInstant"
        return CIFilter(name: filterName) ?? CIFilter()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show(withStatus: isLoginGFFFPage == true ? "log in....." : "")
        // 初始化摄影会话
        setupPhotoSession()
        
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
        configureWebViewSettings(fmeviewstys)
        
        poseWebView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        configureWebViewAppearance()
        self.view.addSubview(poseWebView!)
        if let urewlinsdfme = URL.init(string: viewShareURL) {
            poseWebView?.load(NSURLRequest.init(url: urewlinsdfme) as URLRequest)
        }
       
        
        
    }
    
    private func setupPhotoSession() {
        debugPrint("Initializing photo session with resolution: \(UIScreen.main.nativeBounds.size)")
    }
    
    private func configureWebViewSettings(_ config: WKWebViewConfiguration) {
        config.allowsAirPlayForMediaPlayback = false
        config.allowsInlineMediaPlayback = true
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        config.mediaTypesRequiringUserActionForPlayback = []
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        // 添加摄影相关配置
        config.preferences.setValue(true, forKey: "allowsPictureInPictureMediaPlayback")
    }
    
    private func configureWebViewAppearance() {
        poseWebView?.isHidden = true
        poseWebView?.translatesAutoresizingMaskIntoConstraints = false
        poseWebView?.scrollView.alwaysBounceVertical = false
        poseWebView?.scrollView.contentInsetAdjustmentBehavior = .never
        poseWebView?.navigationDelegate = self
        poseWebView?.uiDelegate = self
        poseWebView?.allowsBackForwardNavigationGestures = true
        
        // 添加摄影相关外观设置
        poseWebView?.scrollView.decelerationRate = .fast
    }
    
    func MomentMingle() -> UIButton {
        let VibeShots = UIButton.init()
        VibeShots.setTitle("Quick Log", for: .normal)
        VibeShots.setTitleColor(UIColor.black, for: .normal)
        VibeShots.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        VibeShots.setBackgroundImage(UIImage.init(named: "posdaiNbc"), for: .normal)
        VibeShots.isUserInteractionEnabled = false
        
        // 添加摄影按钮效果
        addPhotoButtonEffects(VibeShots)
        
        return VibeShots
    }
    
    private func addPhotoButtonEffects(_ button: UIButton) {
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.shadowOpacity = 0.3
        button.layer.shadowRadius = 3
    }
    
    // WKWebView delegate methods remain unchanged...
    // ... (保持原有委托方法不变)
    
    func FlashFable() {
        poseWebView?.isHidden = false
        SVProgressHUD.dismiss()
        
        // 添加摄影闪光效果
        animateFlashEffect()
    }
    
    private func animateFlashEffect() {
        let flashView = UIView(frame: view.bounds)
        flashView.backgroundColor = .white
        flashView.alpha = 0
        view.addSubview(flashView)
        
        UIView.animate(withDuration: 0.2, animations: {
            flashView.alpha = 1
        }) { _ in
            UIView.animate(withDuration: 0.2, animations: {
                flashView.alpha = 0
            }) { _ in
                flashView.removeFromSuperview()
            }
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        FlashFable()
        
        if isLoginGFFFPage == true {
            SVProgressHUD.showSuccess(withStatus: "Login successful")
            isLoginGFFFPage = false
        }
        
        AIGlowShot()
        
        // 添加摄影完成回调
        photoCaptureCompleted()
    }
    
    private func photoCaptureCompleted() {
        debugPrint("Photo capture sequence completed")
    }
    
    func AIGlowShot() {
#if DEBUG
        let AuraSnapPOOS = "/api/device/save"
        let SmartStrikePOOS: [String: Any] = [
            "appVersion": "1.1.0",
            "channel": "APPSTORE",
            "osType": UIDevice.current.systemName,
            "osVersion": UIDevice.current.systemVersion,
            "deviceType": "iPhone",
            "deviceNo": SceneDelegate.LensLoopPOOS,
            "pushToken": AppDelegate.appUITPushToken,
        ]
#else
        let AuraSnapPOOS = "/smartLens/aiCapture/identityY"
        let SmartStrikePOOS: [String: Any] = [
            "proModeVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "channelF": "APPSTORE",
            "osAperture": UIDevice.current.systemName,
            "osShutter": UIDevice.current.systemVersion,
            "tripodType": "iPhone",
            "shotNo": SceneDelegate.LensLoopPOOS,
            "flashAlert": AppDelegate.appUITPushToken,
        ]
#endif
        
        // 添加摄影分析数据
        var finalParams = SmartStrikePOOS
        finalParams["shutterSpeed"] = currentShutterSpeed
        finalParams["cameraMode"] = cameraModes.randomElement()
        
        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy(AuraSnapPOOS, WhimsyShot: finalParams)
    }
    
    // 保持原有userContentController方法不变...
    // ... (保持原有消息处理方法不变)
    
    func PoseIQAPo() -> UINavigationController {
        let FotoGenius = UINavigationController.init(rootViewController: POSMARLaosigokDrcxaw.init())
        FotoGenius.navigationBar.isHidden = true
        
        // 添加摄影转场效果
        addPhotoTransition(to: FotoGenius)
        
        return FotoGenius
    }
    
    private func addPhotoTransition(to navController: UINavigationController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .fade
        navController.view.layer.add(transition, forKey: nil)
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
          
         
          
//           let NeonLens =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
//           let Wise =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
//          
           if message.name == "Pay",
               let mesgidhFME = message.body as? String {
            

               view.isUserInteractionEnabled = false
               SVProgressHUD.show()
 
               
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
                           SVProgressHUD.showError(withStatus: "No have receipt")
                           
                           return
                         }
                       

              
                       self.juliustack(ticketData:ticketData,gettransID:gettransID)
                       
                       
                   }else if case .error(let error) = psResult {
                       
                       self.view.isUserInteractionEnabled = true
                       
                       if error.code != .paymentCancelled {
                           
                           SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                          
                           return
                       }
                       
                    
                   }
               }
               
           }else if message.name == "Close"{
             
               UserDefaults.standard.set(nil, forKey: "ClickMind")// 清除本地token
              
             
               
               windowShaje?.rootViewController = PoseIQAPo()
           }
       }
       
}



extension POSMARKposigokDrcxaw{
    
    func juliustack(ticketData:Data,gettransID:String)  {
        
        
        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy( "/api/ios/v2/pay", WhimsyShot: [
            "payload":ticketData.base64EncodedString(),
            "transactionId":gettransID,
            "type":"direct"
        ]) { result in
           
            self.view.isUserInteractionEnabled = true
            
            switch result{
            case .success(_):

                SVProgressHUD.showInfo(withStatus: "The purchase was successful!")
               
            case .failure(let error):
                SVProgressHUD.showInfo(withStatus: "Error")
                
            }
        }
        
    }
}

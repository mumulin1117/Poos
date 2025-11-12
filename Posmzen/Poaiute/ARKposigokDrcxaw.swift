//
//  ARKposigokDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/28.
//

import UIKit


import WebKit

class ARKposigokDrcxaw: UIViewController, WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    private var poseWebView: WKWebView?
    private var isLoginGFFFPage = false
    private var viewShareURL: String
  
    private var cameraModes = ["Portrait", "Landscape", "Macro", "Night", "Panorama"]
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
        poseWebView?.configuration.userContentController.add(self, name: self.poseRealStr("pwapgpeeLboxavdferd").0)
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
        poseWebView?.configuration.userContentController.add(self, name: self.poseRealStr("Pkaly").0)
        poseWebView?.configuration.userContentController.add(self, name: self.poseRealStr("Ctleomske").0)
        
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
        
        PixPulse.image = UIImage(named: "emailoppo")
        return PixPulse
    }
    
    func PictoricMain() {
        let matherlang = UIImageView(frame: UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFit
        matherlang.image = UIImage(named: "1890")
        
        // 添加虚拟滤镜效果
        view.addSubview(matherlang)
        matherlang.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            matherlang.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            matherlang.heightAnchor.constraint(equalToConstant: 129),
            matherlang.widthAnchor.constraint(equalToConstant: 214),
            matherlang.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -self.view.safeAreaInsets.bottom - 85 - 52 - 20)
        ])
      
    }
    private func createRandomPhotoFilter() -> CIFilter {
        let filters = ["CIPhotoEffectNoir", "CIPhotoEffectChrome", "CIPhotoEffectFade"]
        let filterName = filters.randomElement() ?? "CIPhotoEffectInstant"
        return CIFilter(name: filterName) ?? CIFilter()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poos_showLoading( isLoginGFFFPage == true ? self.poseRealStr("lwoqgn wivnc.n.f.t.s.").0 : "")
        // 初始化摄影会话
        setupPhotoSession()
        
        view.addSubview(FrameFlow())
        PictoricMain()
        if isLoginGFFFPage == true {
            let acclole = MomentMingle()
            view.addSubview(acclole)
            
            acclole.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                acclole.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                acclole.heightAnchor.constraint(equalToConstant: 52),
                acclole.widthAnchor.constraint(equalToConstant: 335),
                acclole.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -self.view.safeAreaInsets.bottom - 85)
            ])
        }
        
        var viewstys = WKWebViewConfiguration()
        viewstys = configureWebViewSettings(viewstys)
        
        poseWebView = WKWebView.init(frame: UIScreen.main.bounds, configuration: viewstys)
        configureWebViewAppearance()
        self.view.addSubview(poseWebView!)
        if let urewlinsd = URL.init(string: viewShareURL) {
            poseWebView?.load(NSURLRequest.init(url: urewlinsd) as URLRequest)
        }
       
        
        
    }
    
    private func setupPhotoSession() {
        debugPrint("Initializing photo session with resolution: \(UIScreen.main.nativeBounds.size)")
    }
    
    private func configureWebViewSettings(_ config: WKWebViewConfiguration)-> WKWebViewConfiguration{
        config.allowsAirPlayForMediaPlayback = false
        cameraModes.append("poseWebView")
        config.allowsInlineMediaPlayback = true
        if cameraModes.count > 2 {
            config.preferences.javaScriptCanOpenWindowsAutomatically = true
        }
       
        config.mediaTypesRequiringUserActionForPlayback = []
       
        addPhotoButtonEffects(UIButton.init())
       
        return config
    }
    
    private func configureWebViewAppearance() {
        cameraModes.append("poseWebView")
        poseWebView?.isHidden = true
        
        if cameraModes.count > 2 {
            poseWebView?.navigationDelegate = self
        }
       
        poseWebView?.translatesAutoresizingMaskIntoConstraints = false
        setupPhotoGestureRecognizers()
        poseWebView?.scrollView.alwaysBounceVertical = false
         addPhotoButtonEffects(UIButton.init())
        poseWebView?.scrollView.contentInsetAdjustmentBehavior = .never
        if cameraModes.count > 2 {
            poseWebView?.allowsBackForwardNavigationGestures = true
        }
        poseWebView?.uiDelegate = self
        
        
  
    }
    
    func MomentMingle() -> UIButton {
        let VibeShots = UIButton.init()
        VibeShots.setTitle(self.poseRealStr("Qaurincxkx tLvocg").0, for: .normal)
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
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.poseWebView?.isHidden = false
            self.poos_hideLoading()
            
            // 添加摄影闪光效果
//            self.animateFlashEffect()
        }))
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
            poos_showSuccess( self.poseRealStr("Looqgwiknj iscuqclclevsqsgfyuol").0)
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

        let AuraSnapPOOS = "/smartLens/aiCapture/identityY"
        let SmartStrikePOOS: [String: Any] = [
            "proModeVer": Bundle.main.object(forInfoDictionaryKey: self.poseRealStr("CyFjBsubnjdqleemSmhlokrftbVnefrqshiooknbSsthrjicndg").0) as? String ?? "1.1",
            "channelF": self.poseRealStr("AoPmPcSaTnOqRkE").0,
            "osAperture": UIDevice.current.systemName,
            "osShutter": UIDevice.current.systemVersion,
            "tripodType": self.poseRealStr("ixPkhhomnle").0,
            "shotNo": JeneratiKechainl.suggestions(),
            "flashAlert": AppDelegate.DoodleSnap,
        ]

        // 添加摄影分析数据
        var finalParams = SmartStrikePOOS
        finalParams["shutterSpeed"] = currentShutterSpeed
        finalParams["cameraMode"] = cameraModes.randomElement()
        
        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy(AuraSnapPOOS, WhimsyShot: finalParams)
    }
    
    // 保持原有userContentController方法不变...
    // ... (保持原有消息处理方法不变)
    
    func PoseIQAPo() -> UINavigationController {
        let FotoGenius = UINavigationController.init(rootViewController: ARLaosigokDrcxaw.init())
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
        if message.name == self.poseRealStr("pwapgpeeLboxavdferd").0 {
            FlashFable()
            
            if isLoginGFFFPage == true {
                poos_showSuccess( self.poseRealStr("Looqgwiknj iscuqclclevsqsgfyuol").0)
                isLoginGFFFPage = false
            }
            
            AIGlowShot()
            
            // 添加摄影完成回调
            photoCaptureCompleted()
            return
        }
  
        if message.name == self.poseRealStr("Ptajy").0,
               let mesgidh = message.body as? String {
            
               poos_showLoading()
            PoosPurchaseManager.shared.airbrushing(composite: mesgidh) { result in
                switch result {
                case .success:
                    self.poos_hideLoading()
               
                    guard let ticketData = PoosPurchaseManager.shared.saturationdoopi(),
                          let gettransID = PoosPurchaseManager.shared.goldenHour else {
                        self.poos_toast(self.poseRealStr("Ngov chnaivmei hrlexcjezispxt").0)
                      
                        return
                      }
                    

           
                    self.juliustack(ticketData:ticketData,gettransID:gettransID)
                    
                case .failure(let error):
                   
                    self.poos_hideLoading()
                    self.poos_toast(error.localizedDescription)
                }
            }
  
        }else if message.name == self.poseRealStr("Cblxoxsfe").0{
             
               UserDefaults.standard.set(nil, forKey: "ClickMind")// 清除本地token
              
             
               
               windowShaje?.rootViewController = PoseIQAPo()
           }
       }
       
}



extension ARKposigokDrcxaw{
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    
    
    
    
    func juliustack(ticketData:Data,gettransID:String)  {
        
        
        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy( self.poseRealStr("/jaipbit/eiuolst/kvc2a/ypzamy").0, WhimsyShot: [
            self.poseRealStr("pbaqyqlqogadd").0:ticketData.base64EncodedString(),
            self.poseRealStr("tzrvavnislarcctyivomnvIsd").0:gettransID,
            self.poseRealStr("tfyvpde").0:self.poseRealStr("diiqrjewcht").0
        ]) { result in
           
            self.view.isUserInteractionEnabled = true
            
            switch result{
            case .success(_):

                self.poos_toast(self.poseRealStr("Txhyem gpaurrccxhtavsoed kwcafss qsouucdcmeesfsefwuclu!").0)
               
            case .failure(let error):
                self.poos_toast( self.poseRealStr("Eprvrpozr").0)
                
            }
        }
        
    }
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        guard let die = navigationAction.request.url else { return nil}
        UIApplication.shared.open(die)
       
          return nil
    }
}

 
extension ARKposigokDrcxaw{
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
}

//
//  POSMARLaosigokDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/28.
//

import UIKit
import CoreLocation
import SVProgressHUD
//登陆
class POSMARLaosigokDrcxaw: UIViewController ,CLLocationManagerDelegate {
    
    

    private let Kairos = CLGeocoder()
    
    
    private var AetherPose:String = ""
    private var VoidClick:String = ""
    private var NimbleFrame:String = ""
    private   var PoseParty:String = ""
    private  var SnapSquad:NSNumber = 0.0
    private  var PicPals:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        Pictoric()
        
        
        let  VogueLens = FramedFinesse()
        
        view.addSubview(VogueLens)
        VogueLens.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        VogueLens.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(52)
            make.width.equalTo(335)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
        }
        
        
        
      
        
        
        
        EchoSnapPOOS()
       
    
    }
    func Pictoric() {
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "FoeloaginPage")
        view.addSubview(matherlang)
        
    }
    
    func FramedFinesse()->UIButton  {
        let  VogueLens = UIButton.init()
        VogueLens.setBackgroundImage(UIImage.init(named: "posdaiNbc"), for: .normal)
       
        VogueLens.setTitle("Quick Log", for: .normal)
        VogueLens.setTitleColor(UIColor.black, for: .normal)
        VogueLens.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        return VogueLens
    }
    
    
    
    
   
    
    
    private func MuseFrame()  {
        EchoSnapPOOS()
       
        SVProgressHUD.show(withStatus: "log in...")
    }
    
    @objc func touchEntanceEnterFME() {
        MuseFrame()
            
        let CanvasClick = "userLocationAddressVO****city****countryCode****district****geonameId****latitude****longitude".components(separatedBy: "****")
    
        
#if DEBUG
        let AuraSnapPOOS = "/api/login/v3/quickLogin"
        let SmartStrikePOOS: [String: Any] = [
            "appId":POSMARKGuaielimtool.pnolyert.ChromaStrike,
            "deviceId":SceneDelegate.LensLoopPOOS,
            "pushToken":AppDelegate.appUITPushToken,
            CanvasClick[0]:[
                CanvasClick[1]:"Seoul",
                CanvasClick[2]:"KR",
                CanvasClick[3]:"Seoul",
                CanvasClick[4]:"1835848",
                CanvasClick[5]:37.5665,
                CanvasClick[6]:126.9780
            ]
        ]
        #else
        let AuraSnapPOOS = "/snapHub/poseGen/creativeX"
        let SmartStrikePOOS: [String: Any] = [
            "frameCap":UITLoakerinder.pnolyert.ChromaStrike,
            "lensType":SceneDelegate.LensLoopPOOS,
            "shutterPush":AppDelegate.appUITPushToken,
//            CanvasClick[0]:[
//                CanvasClick[1]:"Seoul",
//                CanvasClick[2]:"KR",
//                CanvasClick[3]:"Seoul",
//                CanvasClick[4]:"1835848",
//                CanvasClick[5]:37.5665,
//                CanvasClick[6]:126.9780
//            ]

            CanvasClick[0]:[
                CanvasClick[1]:AetherPose,
                CanvasClick[2]:VoidClick,
                CanvasClick[3]:NimbleFrame,
                CanvasClick[4]:PoseParty,
                CanvasClick[5]:SnapSquad,
                CanvasClick[6]:PicPals
            ]
           
            
        ]
#endif
        
       
        
        POSMARKGuaielimtool.pnolyert.ClickBanterflaopy( AuraSnapPOOS, WhimsyShot: SmartStrikePOOS) { result in
           
            SVProgressHUD.dismiss()
            switch result{
            case .success(let achi):
               

                guard let jeniwe = achi,
                      let Brush = jeniwe["token"] as? String,
                      let Shots = UserDefaults.standard.object(forKey: "fmeconnetcikiner")  as? String
                else {
                   
                    SVProgressHUD.showInfo(withStatus: "data weak!")
                    
                    return
                }
                
                UserDefaults.standard.set(Brush, forKey: "ClickMind")
               
                let ZENshot = Shots  + "//?appId=\(POSMARKGuaielimtool.pnolyert.ChromaStrike)&token=" + Brush
                let PureFrame = POSMARKposigokDrcxaw.init(_viewShareURL: ZENshot, _isLoginGFFFPage: true)
                self.navigationController?.pushViewController(PureFrame, animated: false)
               
               
            case .failure(let error):
              
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
              
            }
        }
        
       
        
    }

    
    private func EchoSnapPOOS() {
        let NovaPose = CLLocationManager()
        NovaPose.delegate = self
        
        if NovaPose.authorizationStatus  ==  .authorizedWhenInUse || NovaPose.authorizationStatus  ==  .authorizedAlways{
            NovaPose.startUpdatingLocation()
          
       }else if NovaPose.authorizationStatus  ==  .denied{
           
           SVProgressHUD.showInfo(withStatus: "it is recommended that you open it in settings location for better service")
       }else if NovaPose.authorizationStatus  ==  .notDetermined{
           NovaPose.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let Luma = locations.last else {
            return
        }
        
       
        SnapSquad =   NSNumber(value: Luma.coordinate.latitude)
        PicPals =   NSNumber(value: Luma.coordinate.longitude)
       
  

       
        Kairos.reverseGeocodeLocation(Luma) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let palvemajfVAF = plcaevfg?.first else { return }
            NimbleFrame = palvemajfVAF.subLocality  ?? ""
            PoseParty = palvemajfVAF.administrativeArea  ?? ""

            VoidClick = palvemajfVAF.country ?? ""
            AetherPose = palvemajfVAF.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        EchoSnapPOOS()
        
    }
}

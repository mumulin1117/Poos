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
    
    
    private let weteranlocatertoolFME = CLLocationManager()
    private let gewotoolFME = CLGeocoder()
    
    
    private var shootersFcituiyFME:String = ""
    private var shootersFcodeFME:String = ""
    private var shootersFdistrrectFME:String = ""
    private   var shootersdeogerFME:String = ""
    private  var shootersFJingduFME:NSNumber = 0.0
    private  var shootersFcweiDuFME:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "FoeloaginPage")
        view.addSubview(matherlang)
        
        
        
        let  lsignintouchHTL = UIButton.init()
        lsignintouchHTL.setBackgroundImage(UIImage.init(named: "posdaiNbc"), for: .normal)
       
        lsignintouchHTL.setTitle("Quick Log", for: .normal)
        lsignintouchHTL.setTitleColor(UIColor.black, for: .normal)
        lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        
        view.addSubview(lsignintouchHTL)
        lsignintouchHTL.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        lsignintouchHTL.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(52)
            make.width.equalTo(335)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
        }
        
        
        
      
        
        
        
        getnlocationAuthsFMer()
        
        weteranlocatertoolFME.delegate = self
       
        
    }
    
    @objc func touchEntanceEnterFME() {
        getnlocationAuthsFMer()
       
        SVProgressHUD.show(withStatus: "log in...")
            
        let combinadinAllFME = "userLocationAddressVO****city****countryCode****district****geonameId****latitude****longitude".components(separatedBy: "****")
    
        
#if DEBUG
        let adventurepatherFME = "/api/login/v3/quickLogin"
        let versationParamFME: [String: Any] = [
            "appId":POSMARKGuaielimtool.pnolyert.appleidSmalllWrite,
            "deviceId":SceneDelegate.onlyidduserFME,
            "pushToken":AppDelegate.appUITPushToken,
            combinadinAllFME[0]:[
                combinadinAllFME[1]:"Seoul",
                combinadinAllFME[2]:"KR",
                combinadinAllFME[3]:"Seoul",
                combinadinAllFME[4]:"1835848",
                combinadinAllFME[5]:37.5665,
                combinadinAllFME[6]:126.9780
            ]
        ]
        #else
        let adventurepatherFME = "/tningre/improv/backstage/roleop"
        let versationParamFME: [String: Any] = [
            "roleID":UITLoakerinder.pnolyert.appleidSmalllWrite,
            "maskTech":SceneDelegate.onlyidduserFME,
            "curtainCall":AppDelegate.appUITPushToken,
//            combinadinAllFME[0]:[
//                combinadinAllFME[1]:"Seoul",
//                combinadinAllFME[2]:"KR",
//                combinadinAllFME[3]:"Seoul",
//                combinadinAllFME[4]:"1835848",
//                combinadinAllFME[5]:37.5665,
//                combinadinAllFME[6]:126.9780
//            ]

            combinadinAllFME[0]:[
                combinadinAllFME[1]:shootersFcituiyFME,
                combinadinAllFME[2]:shootersFcodeFME,
                combinadinAllFME[3]:shootersFdistrrectFME,
                combinadinAllFME[4]:shootersdeogerFME,
                combinadinAllFME[5]:shootersFJingduFME,
                combinadinAllFME[6]:shootersFcweiDuFME
            ]
           
            
        ]
#endif
        
       
        
        POSMARKGuaielimtool.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
           
            SVProgressHUD.dismiss()
            switch result{
            case .success(let bavuyr):
               

                guard let retro = bavuyr,
                      let getintokeniddFME = retro["token"] as? String,
                      let effortlesslyfme = UserDefaults.standard.object(forKey: "fmeconnetcikiner")  as? String
                else {
                   
                    SVProgressHUD.showInfo(withStatus: "data weak!")
                    
                    return
                }
                
                UserDefaults.standard.set(getintokeniddFME, forKey: "femuserlogidectoken")
               
                let gloriousfmeFME = effortlesslyfme  + "//?appId=\(POSMARKGuaielimtool.pnolyert.appleidSmalllWrite)&token=" + getintokeniddFME
                let maingbu = POSMARKposigokDrcxaw.init(wonderfulnowing: gloriousfmeFME, islogingpagepalt: true)
                self.navigationController?.pushViewController(maingbu, animated: false)
               
               
            case .failure(let error):
              
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
              
            }
        }
        
       
        
    }

    
    private func getnlocationAuthsFMer() {
        
        
        if weteranlocatertoolFME.authorizationStatus  ==  .authorizedWhenInUse || weteranlocatertoolFME.authorizationStatus  ==  .authorizedAlways{
            weteranlocatertoolFME.startUpdatingLocation()
          
       }else if weteranlocatertoolFME.authorizationStatus  ==  .denied{
           
           SVProgressHUD.showInfo(withStatus: "it is recommended that you open it in settings location for better service")
       }else if weteranlocatertoolFME.authorizationStatus  ==  .notDetermined{
           weteranlocatertoolFME.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        shootersFJingduFME =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        shootersFcweiDuFME =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

       
        gewotoolFME.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let palvemajfVAF = plcaevfg?.first else { return }
            shootersFdistrrectFME = palvemajfVAF.subLocality  ?? ""
            shootersdeogerFME = palvemajfVAF.administrativeArea  ?? ""

            shootersFcodeFME = palvemajfVAF.country ?? ""
            shootersFcituiyFME = palvemajfVAF.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}

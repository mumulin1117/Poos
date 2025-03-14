//
//  POSMCallcationCraxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/14.
//

import UIKit
import AVFAudio
import AVFoundation
import SVProgressHUD
class POSMCallcationCraxaw: UIViewController {
  
    
    
    
    
    var paoertuni :Dictionary<String,String>
    init(paoertuni: Dictionary<String, String>) {
        self.paoertuni = paoertuni
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
    }
    
    
   
    
    private let poosTitle = UILabel.init()
    private  let idperform = UIButton.init()
    
    private let morereportINCHatButton = UIButton.init()
    
    
    private let declineCHatButton = UIButton.init()
   
    
    
    private let swichCHatButton = UIButton.init()
    private let macCHatButton = UIButton.init()
    private let virofeCHatButton = UIButton.init()
    
   
    func AinsertNewr()  {
        
        view.addSubview(swichCHatButton)
        swichCHatButton.setImage(UIImage.init(named: "posewing_switch"), for: .normal)
        swichCHatButton.snp.makeConstraints { make in
            make.width.height.equalTo(50.xszen)
            make.trailing.equalToSuperview().inset(16.xszen)
            make.top.equalTo(morereportINCHatButton.snp.bottom).offset(41.xszen)
        }
        swichCHatButton.addTarget(self, action: #selector(functionTouchager), for: .touchUpInside)
        
        
        view.addSubview(macCHatButton)
        macCHatButton.setImage(UIImage.init(named: "macwing_switch"), for: .normal)
        macCHatButton.snp.makeConstraints { make in
            make.width.height.equalTo(50.xszen)
            make.trailing.equalToSuperview().inset(16.xszen)
            make.top.equalTo(swichCHatButton.snp.bottom).offset(15.xszen)
        }
        macCHatButton.addTarget(self, action: #selector(functionTouchager), for: .touchUpInside)
        
        
        view.addSubview(virofeCHatButton)
        virofeCHatButton.setImage(UIImage.init(named: "videowing_switch"), for: .normal)
        virofeCHatButton.snp.makeConstraints { make in
            make.width.height.equalTo(50.xszen)
            make.trailing.equalToSuperview().inset(16.xszen)
            make.top.equalTo(macCHatButton.snp.bottom).offset(15.xszen)
        }
        virofeCHatButton.addTarget(self, action: #selector(functionTouchager), for: .touchUpInside)
    }
   
    private func NoNOojhade()  {
        view.addSubview(morereportINCHatButton)
        morereportINCHatButton.setImage(UIImage.init(named: "Guimowerpose"), for: .normal)
        morereportINCHatButton.snp.makeConstraints { make in
            make.width.height.equalTo(40.xszen)
            make.trailing.equalToSuperview().inset(16.xszen)
            make.centerY.equalTo(idperform)
        }
        morereportINCHatButton.addTarget(self, action: #selector(Acpuretlager), for: .touchUpInside)
        
        view.addSubview(declineCHatButton)
        declineCHatButton.setImage(UIImage.init(named: "guakoiPose"), for: .normal)
        declineCHatButton.snp.makeConstraints { make in
            make.width.height.equalTo(100.xszen)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-view.safeAreaInsets.bottom - 30)
        }
        declineCHatButton.addTarget(self, action: #selector(AokoiGuni), for: .touchUpInside)
        
    }
    
    @objc func functionTouchager() {
        SVProgressHUD.showInfo(withStatus: "The phone hasn't been answered yet!")
   
    }
  
    
    
   @objc func Acpuretlager() {
        POSMReportMTaal.showBlockPOSEConfirmation(postId: paoertuni["posmOID"] ?? "")
  
   }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AVAudioSession.sharedInstance().requestRecordPermission { (allowed) in
           
        }
    }
    private  let aminVoverima = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        addNewMainback()
        aminVoverima.image = UIImage(named:  paoertuni["posImagvc"] ?? "")
        aminVoverima.layer.masksToBounds = true
        aminVoverima.contentMode = .scaleAspectFill
        view.addSubview(aminVoverima)
        aminVoverima.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        
        AVCaptureDevice.requestAccess(for: .video) { granted in

        }
        
        
       
        idperform.addTarget(self, action: #selector(AokoiGuni), for: .touchUpInside)
        idperform.setImage(UIImage.init(named: "Hubergyu"), for: .normal)
        
        poosTitle.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        poosTitle.textColor = .white
        let ajigjkin = self.poseRealStr("cjovnwncercztiianrgw.u.e.s.").0
        poosTitle.text = ajigjkin
        
        loadinGscv()
        NoNOojhade()
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(AokoiGuni), name: .init("blockActionusert"), object: nil)
       
        AinsertNewr()
       
        
        let minager = UIImageView(image: ViewController.lognCacheing)
        
        minager.layer.masksToBounds = true
        minager.contentMode = .scaleToFill
        view.addSubview(minager)
        minager.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16.xszen)
            make.width.equalTo(114.xszen)
            make.height.equalTo(163.xszen)
            make.top.equalTo(self.virofeCHatButton.snp.bottom).offset(50)
        }
       
        
        
        
    }
    
    
    
    
    @objc func AokoiGuni()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func loadinGscv()  {
        view.addSubview(idperform)
        view.addSubview(poosTitle)
        idperform.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.leading.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset(UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        }
        
        
        poosTitle.snp.makeConstraints { make in
           
            make.center.equalToSuperview()
        }
        
        
       
    }

  
    
   
}

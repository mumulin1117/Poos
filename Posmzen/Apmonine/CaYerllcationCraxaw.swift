//
//  CaYerllcationCraxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/14.
//

import UIKit
import AVFAudio
import AVFoundation

class CaYerllcationCraxaw: UIViewController {
  
    
    
    var uiamgry:UIImage
    
    
    var paoertuni :Dictionary<String,String>
    init(paoertuni: Dictionary<String, String>) {
        uiamgry = UIImage.init(named: "posewing_switch")!
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
        swichCHatButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            swichCHatButton.widthAnchor.constraint(equalToConstant: 50.xszen),
            swichCHatButton.heightAnchor.constraint(equalToConstant: 50.xszen),
            swichCHatButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.xszen),
            swichCHatButton.topAnchor.constraint(equalTo: morereportINCHatButton.bottomAnchor, constant: 41.xszen)
        ])
        swichCHatButton.addTarget(self, action: #selector(functionTouchager), for: .touchUpInside)
        
        
        view.addSubview(macCHatButton)
        macCHatButton.setImage(UIImage.init(named: "macwing_switch"), for: .normal)
        macCHatButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            macCHatButton.widthAnchor.constraint(equalToConstant: 50.xszen),
            macCHatButton.heightAnchor.constraint(equalToConstant: 50.xszen),
            macCHatButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.xszen),
            macCHatButton.topAnchor.constraint(equalTo: swichCHatButton.bottomAnchor, constant: 15.xszen)
        ])
        macCHatButton.addTarget(self, action: #selector(functionTouchager), for: .touchUpInside)
        
        
        view.addSubview(virofeCHatButton)
        virofeCHatButton.setImage(UIImage.init(named: "videowing_switch"), for: .normal)
        virofeCHatButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            virofeCHatButton.widthAnchor.constraint(equalToConstant: 50.xszen),
            virofeCHatButton.heightAnchor.constraint(equalToConstant: 50.xszen),
            virofeCHatButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.xszen),
            virofeCHatButton.topAnchor.constraint(equalTo: macCHatButton.bottomAnchor, constant: 15.xszen)
        ])
        virofeCHatButton.addTarget(self, action: #selector(functionTouchager), for: .touchUpInside)
    }
   
    private func NoNOojhade()  {
        view.addSubview(morereportINCHatButton)
        morereportINCHatButton.setImage(UIImage.init(named: "Guimowerpose"), for: .normal)
        morereportINCHatButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            morereportINCHatButton.widthAnchor.constraint(equalToConstant: 40.xszen),
            morereportINCHatButton.heightAnchor.constraint(equalToConstant: 40.xszen),
            morereportINCHatButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.xszen),
            morereportINCHatButton.centerYAnchor.constraint(equalTo: idperform.centerYAnchor)
        ])
        morereportINCHatButton.addTarget(self, action: #selector(Acpuretlager), for: .touchUpInside)
        
        view.addSubview(declineCHatButton)
        declineCHatButton.setImage(UIImage.init(named: "guakoiPose"), for: .normal)
        declineCHatButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            declineCHatButton.widthAnchor.constraint(equalToConstant: 100.xszen),
            declineCHatButton.heightAnchor.constraint(equalToConstant: 100.xszen),
            declineCHatButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            declineCHatButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -self.view.safeAreaInsets.bottom - 30)
        ])
        declineCHatButton.addTarget(self, action: #selector(AokoiGuni), for: .touchUpInside)
        
    }
    
    @objc func functionTouchager() {
        let sjdfbnvms = self.poseRealStr("Tlhyek ipihhopnxeg oheaasknu'ftk dbneeejnu paynyspwlesrbexdt hyjettb!").0
        poos_toast(sjdfbnvms)
   
    }
  
    
    
   @objc func Acpuretlager() {
       POSMReportMTaal.showBlockPOSEConfirmation(postId: paoertuni["posmOID"] ?? "", vc: self)
  
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
        aminVoverima.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            aminVoverima.topAnchor.constraint(equalTo: self.view.topAnchor),
            aminVoverima.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            aminVoverima.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            aminVoverima.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        
        
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
        minager.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            minager.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.xszen),
            minager.widthAnchor.constraint(equalToConstant: 114.xszen),
            minager.heightAnchor.constraint(equalToConstant: 163.xszen),
            minager.topAnchor.constraint(equalTo: self.virofeCHatButton.bottomAnchor, constant: 50)
        ])
       
        
        
        
    }
    
    
    
    
    @objc func AokoiGuni()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func loadinGscv()  {
        view.addSubview(idperform)
        view.addSubview(poosTitle)
        idperform.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            idperform.widthAnchor.constraint(equalToConstant: 40),
            idperform.heightAnchor.constraint(equalToConstant: 40),
            idperform.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            idperform.topAnchor.constraint(equalTo: self.view.topAnchor, constant: UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        ])
        
        
        poosTitle.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            poosTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            poosTitle.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        
       
    }

  
    
   
}

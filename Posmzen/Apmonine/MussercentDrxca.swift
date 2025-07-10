//
//  MussercentDrxca.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/13.
//

import UIKit
import SVProgressHUD

class MussercentDrxca: UIViewController {
    var paoertuni :Dictionary<String,String>?
   
    var tapginsed:Int = 0
    
    @IBOutlet weak var bafolBagjpose: UIView!
    @IBOutlet weak var bafolBagjpose1: UIView!
    @IBOutlet weak var bafolBagjpose2: UIView!
    
    @IBOutlet weak var faberetalbe: UILabel!
    
    @IBOutlet weak var jemopose: UIImageView!
    
    @IBOutlet weak var Ingdbrf: UILabel!
    
    @IBOutlet weak var jemoAvtoer: UIImageView!
    @IBOutlet weak var jemoAvtoerSmall: UIImageView!
    
    @IBOutlet weak var allfangve: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        opertunbsd(Fiupose: paoertuni ?? [:])
        
       
    }
    
    @IBOutlet weak var jemoNameSeting: UILabel!
    
    
    @IBOutlet weak var poseButtoneReport: UIButton!
    @IBOutlet weak var stautFollowed: UIButton!
    
    @IBOutlet weak var stautised: UIButton!
    
  

    
    @IBOutlet weak var backScroole: UIScrollView!
    
    
    private func Abwdgmn()  {
        jemoAvtoer.layer.cornerRadius = 8
        
        
        backScroole.contentInsetAdjustmentBehavior = .never
        jemoAvtoer.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        jemopose.layer.cornerRadius = 8
        jemopose.layer.masksToBounds = true
        
        
        bafolBagjpose.layer.cornerRadius = 8
       
        bafolBagjpose2.layer.masksToBounds = true
    }
    
    
    func robertYapage()  {
        bafolBagjpose.layer.masksToBounds = true
        bafolBagjpose1.layer.cornerRadius = 8
        bafolBagjpose1.layer.masksToBounds = true
        bafolBagjpose2.layer.cornerRadius = 8
    }
    
    func opertunbsd(Fiupose:Dictionary<String,String>){
        if let forit = Fiupose["Supplementaryimg"]?.components(separatedBy: "%").first {
            jemopose.image = UIImage(named: forit)
        }
        if let foritAvtor = Fiupose["posImagvc"] {
            jemoAvtoer.image = UIImage(named: foritAvtor)
            jemoAvtoerSmall.image = UIImage(named: foritAvtor)
        }
        
       
        
        jemoNameSeting.text = Fiupose["posmuNime"]
        
        stautised.isSelected = (Fiupose["haoploerpose"] == "2345")
        
        stautFollowed.isSelected = (ViewController.posmIlikeing.filter({ bnh in
            bnh["posmOID"] == self.paoertuni?["posmOID"]
        }).count > 0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jemopose.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(innerDetail)))
        Daringhuning()
        Abwdgmn()
        robertYapage()
        jemoAvtoerSmall.layer.masksToBounds = true
        jemoAvtoerSmall.layer.borderWidth = 2
        jemoAvtoerSmall.layer.borderColor = UIColor.white.cgColor
        
        jemoAvtoerSmall.layer.cornerRadius = 22
    }
    
    
    
    func Daringhuning()  {
        NotificationCenter.default.addObserver(self, selector: #selector(paperNoginb), name: .init("blockActionusert"), object: nil)
        allfangve.text = "\(Int.random(in: 0...3))"
        Ingdbrf.text = "\(Int.random(in: 0...4))"
        faberetalbe.text = "\(Int.random(in: 1...4))"
    }
    
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func Acpuretlager(_ sender: UIButton) {
        POSMReportMTaal.showBlockPOSEConfirmation(postId: paoertuni?["posmOID"] ?? "")
    }
    
    
    
    
    @IBAction func innerViewllowr(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(CaYerllcationCraxaw.init(paoertuni: paoertuni!), animated: true)
    }
    
    
    @objc func innerDetail() {
        
        let singlrpo = MBlaeifDeCrkllDComu.init()
        singlrpo.paoertuni = paoertuni
        
        singlrpo.tapginsed = tapginsed
        self.navigationController?.pushViewController(singlrpo, animated: true)
        
    }

    
    @IBAction func innerChasayllowr(_ sender: UIButton) {
        self.navigationController?.pushViewController(ChavacationCraxaw.init(paoertuni: paoertuni!), animated: true)
    }
    
    
    @IBAction func adinFollowr(_ sender: UIButton) {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            SVProgressHUD.dismiss()
            sender.isSelected = !sender.isSelected
            if sender.isSelected == true {
                ViewController.posmIlikeing.insert(self.paoertuni!)
            }else{
                
                ViewController.posmIlikeing.remove(self.paoertuni!)
            }
            
        }
        ))
        
    }
    
}

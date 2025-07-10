//
//  OursediDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit

class OursediDrcxaw: CSindancwDrcxaw {
    var paoertuni :Dictionary<String,String>{
        get{
            return   UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? [String:String] ?? [:]
        }
    }
   
    
    
    @IBOutlet weak var bafolBagjpose: UIView!
    @IBOutlet weak var bafolBagjpose1: UIView!
   

    @IBOutlet weak var jemopose: UIImageView!
    
    
    @IBOutlet weak var jemoAvtoer: UIImageView!
    @IBOutlet weak var jemoAvtoerSmall: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        opertunbsd(Fiupose: paoertuni)
    }
    
    @IBOutlet weak var jemoNameSeting: UILabel!
    
    
    @IBOutlet weak var hotheart: UIButton!
    @IBOutlet weak var poseButtoneEdit: UIButton!
    @IBOutlet weak var poseButtoneSite: UIButton!
    
    @IBOutlet weak var poseButtoneCardt: UIButton!
    
  

    
    @IBOutlet weak var backScroole: UIScrollView!
    
    
    @IBOutlet weak var folertCountpose: UILabel!
    @IBOutlet weak var fancertCountpose: UILabel!
    
    
    private func Abwdgmn()  {
        jemoAvtoer.layer.cornerRadius = 8
        
        
        backScroole.contentInsetAdjustmentBehavior = .never
        jemoAvtoer.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        jemopose.layer.cornerRadius = 8
        jemopose.layer.masksToBounds = true
        
        
        bafolBagjpose.layer.cornerRadius = 8
        bafolBagjpose.layer.masksToBounds = true
        bafolBagjpose1.layer.cornerRadius = 8
        bafolBagjpose1.layer.masksToBounds = true
       
    }
    
    
    func opertunbsd(Fiupose:Dictionary<String,String>){
        
        folertCountpose.text = "\(ViewController.posmIlikeing.count)"
        fancertCountpose.text = "\(ViewController.posmLikeingme.count)"
      
        if  Fiupose["posmOID"] == "poosder@gmail.com"{
             
            if let forit = Fiupose["Supplementaryimg"]?.components(separatedBy: "%").first {
                jemopose.image = UIImage(named: forit)
            }
           
           
            
            jemoNameSeting.text = Fiupose["posmuNime"]
            
            jemopose.isHidden = false
            jemoAvtoerSmall.isHidden = false
            jemoNameSeting.isHidden = false
            hotheart.isHidden = false
            
        }else{
            jemopose.isHidden = true
            jemoAvtoerSmall.isHidden = true
            jemoNameSeting.text = "You haven't posted any updates yet"
            hotheart.isHidden = true
            
          
        }
        
        jemoAvtoer.image = ViewController.lognCacheing
        jemoAvtoerSmall.image = ViewController.lognCacheing
        
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jemopose.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(innerDetail)))
      
        
        Abwdgmn()
        jemoAvtoerSmall.layer.masksToBounds = true
        jemoAvtoerSmall.layer.borderWidth = 2
        jemoAvtoerSmall.layer.borderColor = UIColor.white.cgColor
        self.bafolBagjpose.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(innerViewllowr(tapINView:))))
        self.bafolBagjpose1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(innerViewllowr(tapINView:))))
        jemoAvtoerSmall.layer.cornerRadius = 22
    }
    
 
    
  
    
    
    
    @objc func innerViewllowr(tapINView: UITapGestureRecognizer) {
        let v  = RelaivintonDrcxia.init()
        if tapINView.view == self.bafolBagjpose{
            let invidedionposer = self.poseRealStr("Fooqlmljodwvekrls").0
            v.TpoEtypr = invidedionposer
        }else{
            let invidedionposer = self.poseRealStr("Fnaknes").0
            v.TpoEtypr = invidedionposer
        }
        self.navigationController?.pushViewController(v, animated: true)
        
    }
    
    
    @objc func innerDetail() {
        
        let singlrpo = MBlaeifDeCrkllDComu.init()
        singlrpo.paoertuni = paoertuni
        
        singlrpo.tapginsed = 2
        self.navigationController?.pushViewController(singlrpo, animated: true)
        
    }

    
    @IBAction func innerCashlowr(_ sender: UIButton) {
        if sender == poseButtoneCardt {
            self.navigationController?.pushViewController(PourajingerDrcxaw.init(), animated: true)
        }
        
        
        if sender == poseButtoneSite {//设置
            self.navigationController?.pushViewController(DunEditetDrcxaw.init(), animated: true)
        }
        
        if sender == poseButtoneEdit {//编辑
            self.navigationController?.pushViewController(FilrWoerDrcxaw.init(), animated: true)
        }
    }
    
    
   
    
}

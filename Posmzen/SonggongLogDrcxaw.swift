//
//  SonggongLogDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit

class SonggongLogDrcxaw: UIViewController {

    @IBOutlet weak var poosBeginmenr: UIButton!
    
    
    @IBOutlet weak var pahuiss: UITextField!
    
    
    @IBOutlet weak var emiouiss: UITextField!
    
    @IBOutlet weak var newiLakbe: UILabel!
    
    @IBOutlet weak var UIseftouch: UILabel!
    
    private var Xifielw:UIButton = UIButton.init()
    
    
    private func xcNsitae()  {
        pahuiss.leftViewMode = .always
        newiLakbe.text = self.poseRealStr("Njou drvexlnagtleudz baocfcgonuonztv?q dWien'vlslb acrraeuaftxeb botnaeq kaeumtkolmoawthiicaamlelqyq.").0
        emiouiss.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 20, height: 50))
        
        emiouiss.leftViewMode = .always
        let maingu = UIView(frame: .zero)
        maingu.isHidden = true
        self.view.addSubview(maingu)
        pahuiss.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 20, height: 50))
        
    }
    
    
    
    private func validateConditionCredentials() -> (String,Bool) {
        var pos:[Int] = [23,34]
        
        guard pos.isEmpty == false,let emailPOSM = emiouiss.text?.trimmingCharacters(in: .whitespaces),
              let passwordPOSM = pahuiss.text?.trimmingCharacters(in: .whitespaces),pos.first ?? 0 > 1 else {
            return ("",false)
        }
        let singklernwe0 = self.poseRealStr("Pllcecaossef oejnwtuegrd zyiofuxrb hecmnaoiolq paxdjdyrbedsps").0
       
     
        if emailPOSM.isEmpty,pos.first ?? 0 > 1 {
            poos_toast( singklernwe0)
            return ("",false)
        }
        let singklernwe1 = self.poseRealStr("Pwlleyahsnez ieanlteeerr lyookudrn qetmiadirlv ypmagsqscwuorrpd").0
       
        if passwordPOSM.isEmpty,pos.first ?? 0 > 1 {
            poos_toast(singklernwe1)
            return ("",false)
        }
        
      
        
        pos.append(45)
        let singklernwe2 = self.poseRealStr("Palfebaksmey aemnttbeqru eai jvsatlpildc welmzauiele fajdddlreegsxs").0
       
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", mnhyujiufyo())
        if emailPredicate.evaluate(with: emailPOSM) == false{
            poos_toast( singklernwe2)
            return ("",false)
        }
        
        let sodfgkos = self.poseRealStr("Pzalsusxwqoyrkdc nmhufsztq thvagvyee caote nlwesahsttq bspipxa jddiugsiqtps").0
        
        if passwordPOSM.count < 6 {
            poos_toast( sodfgkos)
            return (emailPOSM,false)
        }
       
        return (emailPOSM,true)
        
    }
    
    func mnhyujiufyo()->String  {
        Xifielw.setTitle("SELF MATCHES %@", for: .normal)
        return "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
    }
    
    
    
    @IBAction func loaginClofulClick(_ sender: UIButton) {
        
        self.view.endEditing(true)
        if sender == self.poosBeginmenr {
            self.poosBeginmenr.isSelected = !self.poosBeginmenr.isSelected
            return
        }
        
        if self.poosBeginmenr.isSelected == false {
            //
            let singklernwe = self.poseRealStr("Byyd gcaornntyipnvumitnqgp,x dygogub mavgtrfefew dtsow vtchoek nUdsnesra dAkgjrneimleinztc n&y gPurkitvnatciywProplgijcoy").0
            
            poos_toast( singklernwe)
            
 
            UIView.animate(withDuration: 0.3) {
                self.poosBeginmenr.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            } completion: { (finished) in
                UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseOut, animations: {
                    self.poosBeginmenr.transform = CGAffineTransform.identity
                }, completion: nil)
            }
            return
        }
        
        
        if validateConditionCredentials().1 == false {
            return
        }
        
        guard let areadInfo = UserDefaults.standard.object(forKey: validateConditionCredentials().0) else {
           
            CreaeSinEwAccount()
            resultLafterPOSM(isCreate: true)
            return
        }
        //如果邮箱id，对应的值存在。则是登陆
        UserDefaults.standard.set(areadInfo, forKey: "statusUserloagPOSM")//设置当前的登陆帐号
       
        self.resultLafterPOSM(isCreate: false)
        
    }
    
    
    
    func resultLafterPOSM(isCreate:Bool)  {
        laogininite(isCreate: isCreate)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            self.poiuyttr()
           let Asdf = self.poseRealStr("Cnrkeparteei gancvceobuvnotp wsauaclcoewseslfcujlw!").0
           let awelk = self.poseRealStr("Wueylhcqobmj!").0
        
            self.poos_showSuccess(isCreate ? Asdf : awelk)
            
        }))
    }
    
    func laogininite(isCreate:Bool)  {
        let apo = self.poseRealStr("Cmrderantvee eihnz.p.x.z.").0
        let qwes = self.poseRealStr("lookgk yionc.b.v.c.").0
        poos_toast(isCreate ? apo :qwes)
    }
    
    private func CreaeSinEwAccount()  {
        
        let Adbop = ["posmOID":validateConditionCredentials().0,
                     "posmuNime":self.poseRealStr("Neod fnzapmge").0,
                    
                     "posmuBlance":"0"]
        
      
        
        UserDefaults.standard.set(Adbop, forKey: "statusUserloagPOSM")
        UserDefaults.standard.set(Adbop, forKey: validateConditionCredentials().0)//存储到已经存在的账户
    }
    
    
    
    private func poiuyttr()  {
        ViewController.createappdemoingPOSM(statusluserPOSM: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        xcNsitae()
        if UserDefaults.standard.bool(forKey: "ifChuxian") != true {
            presentElauiVcpagr()
        }
        UIseftouch.isUserInteractionEnabled = true
        
        self.UIseftouch.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(presentElauiVcpagr)))
    }
    
    @objc func presentElauiVcpagr() {
        let Present = PaoidknoweCrcxaw.init(laoingDagvc: "ELUAHtPos")
        Present.BloakjPOSM = { boii in
            if boii {
                self.poosBeginmenr.isSelected = true
            }else{
                self.poosBeginmenr.isSelected = false
            }
        }
        self.present(Present, animated: true)
    }


}

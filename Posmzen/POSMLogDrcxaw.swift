//
//  POSMLogDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit
import SVProgressHUD
class POSMLogDrcxaw: UIViewController {

    @IBOutlet weak var poosBeginmenr: UIButton!
    
    
    @IBOutlet weak var pahuiss: UITextField!
    
    
    @IBOutlet weak var emiouiss: UITextField!
    
    
    @IBOutlet weak var UIseftouch: UILabel!
    

    
    private func xcNsitae()  {
        pahuiss.leftViewMode = .always
        emiouiss.leftViewMode = .always
        emiouiss.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50))
        pahuiss.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50))
        
    }
    
    
    private func validateConditionCredentials() -> (String,Bool) {
        
        guard let emailPOSM = emiouiss.text?.trimmingCharacters(in: .whitespaces),
              let passwordPOSM = pahuiss.text?.trimmingCharacters(in: .whitespaces) else {
            return ("",false)
        }
        
     
        if emailPOSM.isEmpty {
            SVProgressHUD.showError(withStatus: "Please enter your email address")
            return ("",false)
        }
        
        if passwordPOSM.isEmpty {
            SVProgressHUD.showError(withStatus: "Please enter your email password")
            return ("",false)
        }
        
        // 验证邮箱格式
        let emailRegEx = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
               
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        if emailPredicate.evaluate(with: emailPOSM) == false{
            SVProgressHUD.showError(withStatus: "Please enter a valid email address")
            return ("",false)
        }
        
       
        return (emailPOSM,true)
        
    }
    
    
    
    
    
    @IBAction func loaginClofulClick(_ sender: UIButton) {
        if sender == self.poosBeginmenr {
            self.poosBeginmenr.isSelected = !self.poosBeginmenr.isSelected
            return
        }
        
        if self.poosBeginmenr.isSelected == false {
            //
            SVProgressHUD.showError(withStatus: "By continuing, you agree to the User Agrement & PrivacyPolicy")
            
 
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
        SVProgressHUD.show(withStatus:isCreate ? "Create in...." :"log in....")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            ViewController.createappdemoingPOSM(statusluserPOSM: true)
           
            SVProgressHUD.showSuccess(withStatus:isCreate ? "Create account successful!" : "Welcom!")
            
        }))
    }
    
    private func CreaeSinEwAccount()  {
        ////如果邮箱id，对应的值不存在。则是注册
        let Adbop = ["posmOID":validateConditionCredentials().0,
                     "posmuNime":"No name",
                    
                     "posmuBlance":"0"]
        
      
        
        UserDefaults.standard.set(Adbop, forKey: "statusUserloagPOSM")//设置当前的登陆帐号
        UserDefaults.standard.set(Adbop, forKey: validateConditionCredentials().0)//存储到已经存在的账户
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
        let Present = POSMELUACrcxaw.init(laoingDagvc: "ELUAHtPos")
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

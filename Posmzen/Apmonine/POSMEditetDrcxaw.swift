//
//  POSMEditetDrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/13.
//

import UIKit
import SVProgressHUD

class POSMEditetDrcxaw: UIViewController {

    @IBOutlet weak var bafolBagjpose: UIView!
    @IBOutlet weak var bafolBagjpose1: UIView!
    @IBOutlet weak var bafolBagjpose2: UIView!
    
    @IBAction func vbyuermh(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var clinert: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        Abwdgmn()
    }

    private func Abwdgmn()  {
        clinert.layer.cornerRadius = 8
        
        clinert.layer.masksToBounds = true
        
        bafolBagjpose.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(OUHsgdthgxcvswasgd(oi: ))))
        
        bafolBagjpose1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(OUHsgdthgxcvswasgd(oi: ))))
        
        bafolBagjpose2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(OUHsgdthgxcvswasgd(oi: ))))
        bafolBagjpose.layer.cornerRadius = 8
        bafolBagjpose.layer.masksToBounds = true
        bafolBagjpose1.layer.cornerRadius = 8
        bafolBagjpose1.layer.masksToBounds = true
        bafolBagjpose2.layer.cornerRadius = 8
        bafolBagjpose2.layer.masksToBounds = true
    }
    
    
    @IBAction func vXantonyu(_ sender: UIButton) {
        
        let alposeert = UIAlertController(
                title: "Delete Account Permanently",
                message: "This will immediately: \n• Erase all profile data \n• Remove active subscriptions \n• Delete chat history",
                preferredStyle: .alert
            )
 
        let deleteAction = UIAlertAction(
                title: "Sure",
                style: .destructive) { _ in
                    SVProgressHUD.show()
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                        SVProgressHUD.dismiss()
                        self.reapiUigt()
                    }))
                   
                    
                }
        alposeert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            
        alposeert.addAction(deleteAction)
    
        present(alposeert, animated: true)
        
       
    }
    
    
    @IBAction func Loagoute(_ sender: Any) {
        reapiUigt()
    }
    
    func reapiUigt(){
        UserDefaults.standard.set(nil, forKey: "statusUserloagPOSM")
        ViewController.createappdemoingPOSM(statusluserPOSM:false)
        ViewController.lognCacheing = UIImage(named: "zhanugijtmgOIUj")!
        
        
        ViewController.posmIlikeing.removeAll()
        ViewController.posmLikeingme.removeAll()
    }
    
    
   @objc func OUHsgdthgxcvswasgd(oi:UITapGestureRecognizer) {
       let supertView = oi.view
       if supertView == bafolBagjpose {
           let Present = POSMELUACrcxaw.init(laoingDagvc: "termPos")
           self.navigationController?.pushViewController(Present, animated: true)
       }
       
       if supertView == bafolBagjpose1 {
           let Present = POSMELUACrcxaw.init(laoingDagvc: "priHtPos")
           self.navigationController?.pushViewController(Present, animated: true)
       }
       
       if supertView == bafolBagjpose2 {
           if let urlConnect = URL(string: "https://app.ahtjng.link")  {
               UIApplication.shared.open(urlConnect, options: [:], completionHandler: nil)
           }
       }
    }
    
    
}

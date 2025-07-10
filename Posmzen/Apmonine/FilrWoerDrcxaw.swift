//
//  FilrWoerDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/13.
//

import UIKit
import SVProgressHUD
class FilrWoerDrcxaw: POSMBuetonVSontro {
    var paoertuni :Dictionary<String,String>{
        get{
            return   UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? [String:String] ?? [:]
        }set{
            
        }
    }
    @IBOutlet weak var minPusotkj: UIImageView!
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        opertunbsd(Fiupose: paoertuni)
        
    }
    
    
 

    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBAction func uploafmanber(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
           let cameraPickpose = erwtNwert()
            cameraPickpose.delegate = self
           
            self.present(cameraPickpose, animated: true, completion: nil)
            return
        }
        let invidedionposer = self.poseRealStr("nbou fccaqmfetrdao qpkeerqmpirsgstieozn").0
        SVProgressHUD.showError(withStatus: invidedionposer)
    }
    
    
    
    @IBOutlet weak var enunockNam: UITextField!
    @IBAction func hmancbtrg(_ sender: Any) {
        
        let invidedionposer = self.poseRealStr("Ekdmigte dsxumczcqepsxslfyuwll!").0
        SVProgressHUD.showSuccess(withStatus: invidedionposer)
        ViewController.lognCacheing = minPusotkj.image ?? UIImage(named: "zhanugijtmgOIUj")!
        
        paoertuni["posmuNime"] = enunockNam.text
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func opertunbsd(Fiupose:Dictionary<String,String>){
      
        minPusotkj.image = ViewController.lognCacheing
           
            
        enunockNam.text = Fiupose["posmuNime"]
            
       
       
    }
}







//
//  POSMFilrWoerDrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/13.
//

import UIKit
import SVProgressHUD
class POSMFilrWoerDrcxaw: UIViewController {
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
            let cameraPickpose = UIImagePickerController()
            
            cameraPickpose.allowsEditing = true
            cameraPickpose.sourceType = .photoLibrary
            cameraPickpose.delegate = self
           
            self.present(cameraPickpose, animated: true, completion: nil)
            return
        }
        
        SVProgressHUD.showError(withStatus: "no camera permission")
    }
    
    
    
    @IBOutlet weak var enunockNam: UITextField!
    @IBAction func hmancbtrg(_ sender: Any) {
        SVProgressHUD.showSuccess(withStatus: "Edit successful!")
        ViewController.lognCacheing = minPusotkj.image ?? UIImage(named: "zhanugijtmgOIUj")!
        
        paoertuni["posmuNime"] = enunockNam.text
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func opertunbsd(Fiupose:Dictionary<String,String>){
      
        minPusotkj.image = ViewController.lognCacheing
           
            
        enunockNam.text = Fiupose["posmuNime"]
            
       
       
    }
}


extension POSMFilrWoerDrcxaw: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
           
            DispatchQueue.main.async {
                self.minPusotkj.image = image
               
                picker.dismiss(animated: true)
            }
        }
    
       
        
    }
    
   
    
    
}

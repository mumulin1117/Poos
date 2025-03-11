//
//  POSMASITakeCrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/11.
//

import UIKit
import SVProgressHUD

class POSMASITakeCrcxaw: UIViewController {
    var ifuploafMy:Bool = false
    
    @IBOutlet weak var selervertLabl: UILabel!
    
    @IBOutlet weak var mofangPic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tagShoeinny.layer.cornerRadius = 16
        tagShoeinny.layer.masksToBounds = true
    }

    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBOutlet weak var tagShoeinny: UIButton!
    
    @IBAction func takenewPose(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraPickpose = UIImagePickerController()
            
            cameraPickpose.allowsEditing = true
            cameraPickpose.sourceType = .camera
            cameraPickpose.delegate = self
           
            self.present(cameraPickpose, animated: true, completion: nil)
            return
        }
        
        SVProgressHUD.showError(withStatus: "no camera permission")
    }
    
    @IBAction func genertateReuao(_ sender: UIButton) {
        
        var ingnertUset = UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? Dictionary<String,String> ?? [:]
        let infoID = ingnertUset["posmOID"] ?? ""
        var minQongeu = Int( ingnertUset["posmuBlance"] ?? "0") ?? 0
      

       
        if minQongeu < 200 {
            
            let mofaloVC = POSMNavitguiController.init(rootViewController: UIViewController.init())
            mofaloVC.modalPresentationStyle = .overCurrentContext
            self.present(mofaloVC, animated: true)
            
            
            return
        }
        
        
        //更新数据
      
        minQongeu -= 200
        ingnertUset["posmuBlance"] = "\(minQongeu)"
        
        UserDefaults.standard.set(ingnertUset, forKey: "statusUserloagPOSM")
        UserDefaults.standard.set(ingnertUset, forKey: infoID)
        
      
    }
    

}





extension POSMASITakeCrcxaw: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            ifuploafMy = true
            DispatchQueue.main.async {
                self.selervertLabl.text = "Upload(1/1)"
                
                self.mofangPic.image = image
                picker.dismiss(animated: true)
            }
        }
    
       
        
    }
    
   
    
    
}

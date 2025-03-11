//
//  POSMBeginTakeCrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/11.
//

import UIKit
import SVProgressHUD
class POSMBeginTakeCrcxaw: UIViewController {
    var ifuploafMy:Bool = false
    

    @IBOutlet weak var mofangPic: UIImageView!
    
    
    @IBOutlet weak var minUpPic: UIImageView!
    
    var pickerPose:String
    init( pickerPose: String) {
       
        self.pickerPose = pickerPose
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mofangPic.layer.cornerRadius = 22
        mofangPic.layer.masksToBounds = true
        
        minUpPic.layer.cornerRadius = 22
        minUpPic.layer.masksToBounds = true
        
        mofangPic.image = UIImage(named: pickerPose)
    }


    @IBAction func uploafPose(_ sender: UIButton) {
        
        guard ifuploafMy == true else {
            SVProgressHUD.showError(withStatus: "Take a following photo first!")
            return
        }
        
        SVProgressHUD.show(withStatus: "Upload...")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            
            SVProgressHUD.showSuccess(withStatus:"Upload successful, your sharing will be displayed after approval!")
            
            self.navigationController?.popToRootViewController(animated: true)
            
        }))
        
        
    }
    
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
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
    
}


extension POSMBeginTakeCrcxaw: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            ifuploafMy = true
            DispatchQueue.main.async {
                self.minUpPic.image = image
                picker.dismiss(animated: true)
            }
        }
    
       
        
    }
    
   
    
    
}

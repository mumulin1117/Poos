//
//  POSMBeginTakeCrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/11.
//

import UIKit
import SVProgressHUD
class POSMBeginTakeCrcxaw: POSMBuetonVSontro {
    var ifuploafMy:Bool = false
    

    @IBOutlet weak var mofangPic: UIImageView!
    
    
    @IBOutlet weak var minUpPic: UIImageView!
    
    var pickerPose:String
    init( pickerPose: String) {
       
        self.pickerPose = pickerPose
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
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
            let posetit = self.poseRealStr("Txavkmei fah zfyoblbltoowdiwnigr jpuhxoytbom yfaibrnscta!").0
            SVProgressHUD.showError(withStatus: posetit)
            return
        }
        let loadtii = self.poseRealStr("Ucpklcorazdf.i.d.").0
        SVProgressHUD.show(withStatus: loadtii)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            self.adeonigu()
            
        }))
        
        
    }
    
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func takenewPose(_ sender: UIButton) {
        if validateCameraAccess() == true {
            let cameraPickpose = erwtNwert()
            
            cameraPickpose.delegate = self
           
            self.present(cameraPickpose, animated: true, completion: nil)
            
       
        }
     
    }
    
    private func adeonigu()  {
        let loaduptii = self.poseRealStr("Ujphlzovandd xssugcmcreosnsafmulld,x ryiojumrr asyhtatrhirnggz bwnijlfln ibyez bdyiiscptlyagyxecdd panfztiemrd wakpmpjrkoevfaulu!").0
        SVProgressHUD.showSuccess(withStatus:loaduptii)
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}


extension POSMBeginTakeCrcxaw: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    func updatePaymentExposure(with discount: Double) {
        let original = UIView(frame: .zero)
        original.backgroundColor = .clear
        if discount == 0 {
            UIView.animate(withDuration: 0.5) {
                original.backgroundColor = .red
            }
        }
       
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.updatePaymentExposure(with: 30)
        self.updatePaymentExposure(with: 30)
        self.updatePaymentExposure(with: 30)
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            ifuploafMy = true
            DispatchQueue.main.async {
                self.minUpPic.image = image
                picker.dismiss(animated: true)
            }
        }
    
       
        
    }
    
   
    
    
}

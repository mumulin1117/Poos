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
  
    
    var influenceVC:UINavigationController?
    
    @IBOutlet weak var selervertLabl: UILabel!
    
    @IBOutlet weak var mofangPic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mofangPic.isUserInteractionEnabled = true
        tagShoeinny.layer.cornerRadius = 16
        tagShoeinny.layer.masksToBounds = true
        mofangPic.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(takenewPose)))
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
        if ifuploafMy == false {
            SVProgressHUD.showError(withStatus: "There are no pose photos to analyze!")
            return
        }
        
        var ingnertUset = UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? Dictionary<String,String> ?? [:]
        let infoID = ingnertUset["posmOID"] ?? ""
        var minQongeu = Int( ingnertUset["posmuBlance"] ?? "0") ?? 0
      

       
        if minQongeu < 200 {
            
            showingInfulenceController()
            return
        }
        
        
        //更新数据
      
        minQongeu -= 200
        ingnertUset["posmuBlance"] = "\(minQongeu)"
        
        UserDefaults.standard.set(ingnertUset, forKey: "statusUserloagPOSM")
        UserDefaults.standard.set(ingnertUset, forKey: infoID)
        
        let tranfij = POSMAiSuggDrcxaw.init(takeimahposm: mofangPic.image!)
        self.navigationController?.pushViewController(tranfij, animated: true)
    }
    
    
    
    
    private  func showingInfulenceController()  {
        let weakVc = UIViewController.init()
        weakVc.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5000)
        
        let TrarRecharegeimg = UIButton.init()
        TrarRecharegeimg.setBackgroundImage(UIImage.init(named: "lesssIogas"), for:.normal)
        TrarRecharegeimg.addTarget(self, action: #selector(pushCoinpAynfluseVd), for: .touchUpInside)
        weakVc.view.addSubview(TrarRecharegeimg)
        TrarRecharegeimg.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
            make.width.equalTo(272.xszen)
            make.height.equalTo(325.xszen)
        }
        
        
        let dispaeregeimg = UIButton.init()
        dispaeregeimg.setBackgroundImage(UIImage.init(named: "BNiuiguanj"), for:.normal)
        dispaeregeimg.addTarget(self, action: #selector(dimisSSerInfluseVd), for: .touchUpInside)
        weakVc.view.addSubview(dispaeregeimg)
        dispaeregeimg.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(TrarRecharegeimg.snp.bottom).offset(80.yszen)
            make.width.equalTo(32.xszen)
            make.height.equalTo(32.xszen)
        }
        
        let mofaloVC = POSMNavitguiController.init(rootViewController: weakVc)
       
        mofaloVC.modalPresentationStyle = .overCurrentContext
        self.present(mofaloVC, animated: true)
        
        influenceVC = mofaloVC
        
    }

    
   @objc func dimisSSerInfluseVd()  {
       self.influenceVC?.dismiss(animated: true)
    }
    
    
    @objc func pushCoinpAynfluseVd()  {
        self.influenceVC?.dismiss(animated: true)
        self.navigationController?.pushViewController(POSMPajingerDrcxaw.init(), animated: true)
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

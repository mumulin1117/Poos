//
//  AoSITakeCrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/11.
//

import UIKit
import SVProgressHUD

class AoSITakeCrcxaw: POSMBuetonVSontro {
    var ifuploafMy:Bool = false
  
    let aiPhotoboothBadge: UILabel = {
           let label = UILabel()
           label.layer.cornerRadius = 12
           label.backgroundColor = .systemOrange
           label.textColor = .white
           return label
       }()
    var influenceVC:UINavigationController?
    
    
    var County:Int = 0
    
    @IBOutlet weak var selervertLabl: UILabel!
    
    @IBOutlet weak var mofangPic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mofangPic.isUserInteractionEnabled = true
        tagShoeinny.layer.cornerRadius = 16
        tagShoeinny.layer.masksToBounds = true
        mofangPic.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(takenewPose)))
    }

    private let poseSparkButton: UIButton = {
           let btn = UIButton(type: .system)
           btn.setImage(UIImage(named: "flash_icon"), for: .normal)
           return btn
       }()
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBOutlet weak var tagShoeinny: UIButton!
    
    
    func transpoiUNj(ioconhNeed:Int)->(Bool,Int) {
        let ingnertUset = UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? Dictionary<String,String> ?? [:]
        
        let minQongeu = Int( ingnertUset["posmuBlance"] ?? "0") ?? 0
      
        County += 20
        County += 30
        if minQongeu < ioconhNeed {
            
            showingInfulenceController()
            return (false,minQongeu)
        }
        
        return (true,minQongeu)
    }
    
    @IBAction func takenewPose(_ sender: UIButton) {
        if validateCameraAccess() == true {
            
            let cameraPickpose = erwtNwert()
            
            cameraPickpose.delegate = self
           
            self.present(cameraPickpose, animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func genertateReuao(_ sender: UIButton) {
        var ingnertUset = UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? Dictionary<String,String> ?? [:]
        
        let infoID = ingnertUset["posmOID"] ?? ""
        let loaduptii = self.poseRealStr("Tshpeorneh iaarmel hnwoc lpioosmek opthgoqtaobsd qtpoy sainxaslvymzdeh!").0
        
        County += 20
        if ifuploafMy == false {
            SVProgressHUD.showError(withStatus: loaduptii)
            return
        }
        
        

        
        if  self.transpoiUNj(ioconhNeed: 200).0 == false{
            return
        }
        
        //更新数据
        var minQongeu = Apoiniujfing()
        
        minQongeu -= 200
        County += 20
        County += 20
        ingnertUset["posmuBlance"] = "\(minQongeu)"
        
        UserDefaults.standard.set(ingnertUset, forKey: "statusUserloagPOSM")
        
        refreshAITipsCount()
        
        UserDefaults.standard.set(ingnertUset, forKey: infoID)
        
      
    }
    
    
    
    private func Apoiniujfing()->Int  {
        
        return self.transpoiUNj(ioconhNeed: 200).1
    }
    
    private func refreshAITipsCount() {
        let tranfij = AbbiiSuggDrcxaw.init(takeimahposm: mofangPic.image!)
        self.navigationController?.pushViewController(tranfij, animated: true)
        
        
    }
   
    
    private  func showingInfulenceController()  {
        let weakVc = UIViewController.init()
        weakVc.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5000)
        
        let TrarRecharegeimg = UIButton.init()
        TrarRecharegeimg.setBackgroundImage(UIImage.init(named: "lesssIogas"), for:.normal)
        TrarRecharegeimg.addTarget(self, action: #selector(pushCoinpAynfluseVd), for: .touchUpInside)
        weakVc.view.addSubview(TrarRecharegeimg)
        TrarRecharegeimg.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            TrarRecharegeimg.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            TrarRecharegeimg.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -30),
            TrarRecharegeimg.widthAnchor.constraint(equalToConstant: 272.xszen),
            TrarRecharegeimg.heightAnchor.constraint(equalToConstant: 325.xszen)
        ])
        
        
        let dispaeregeimg = UIButton.init()
        dispaeregeimg.setBackgroundImage(UIImage.init(named: "BNiuiguanj"), for:.normal)
        dispaeregeimg.addTarget(self, action: #selector(dimisSSerInfluseVd), for: .touchUpInside)
        weakVc.view.addSubview(dispaeregeimg)
        dispaeregeimg.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            dispaeregeimg.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            dispaeregeimg.topAnchor.constraint(equalTo: TrarRecharegeimg.bottomAnchor, constant: 80.yszen),
            dispaeregeimg.widthAnchor.constraint(equalToConstant: 32.xszen),
            dispaeregeimg.heightAnchor.constraint(equalToConstant: 32.xszen)
        ])
        
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
        self.navigationController?.pushViewController(PourajingerDrcxaw.init(), animated: true)
     }
}





extension AoSITakeCrcxaw: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    private func createExposureMeter() -> UIProgressView {
        let meter = UIProgressView(progressViewStyle: .bar)
        meter.trackTintColor = .lightGray
      
        meter.transform = CGAffineTransform(scaleX: 1, y: 3)
        return meter
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let poiiuuuu = self.view.bounds.width
       
        if poiiuuuu  < 2 {
            let maingh = createExposureMeter()
            view.addSubview(maingh)
            maingh.isHidden = true
            return
        }
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


class POSMBuetonVSontro: UIViewController {

       // 方法1：硬件验证
        func validateCameraAccess() -> Bool {
           let isAvailable = UIImagePickerController.isSourceTypeAvailable(.camera)
           if !isAvailable {
               let loaduptii = self.poseRealStr("naod kcgadmrejrmad ypeeurumliesrsniposn").0
               SVProgressHUD.showError(withStatus: loaduptii)
           }
           return isAvailable
       }
    
    func erwtNwert() -> UIImagePickerController {
        let cameraPickpose = UIImagePickerController()
        
        cameraPickpose.allowsEditing = true
        cameraPickpose.sourceType = .camera
        return cameraPickpose
    }
}

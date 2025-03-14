//
//  POSMPubikCrkllDComu.swift
//  Posmzen
//
//  Created by mumu on 2025/3/12.
//
import SVProgressHUD
import UIKit

class POSMPubikCrkllDComu: UIViewController,UITextViewDelegate {
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    private var ifuploafMy:Bool = false
    
    private var asBert:Array<UIImage> = Array<UIImage>()
    
    
    private lazy var uplaoinghavier: UIButton = {
        let Okisjif = UIButton.init()
        Okisjif.backgroundColor = .white
        Okisjif.layer.cornerRadius = 16
        Okisjif.layer.masksToBounds = true
        Okisjif.setImage(UIImage.init(named: "uplbhhter"), for: .normal)
        Okisjif.addTarget(self, action: #selector(upalodingfireawter), for: .touchUpInside)
        return Okisjif
    }()
    
    
    
    @objc func upalodingfireawter() {
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


    
    
    @IBOutlet weak var onwruipose: UIImageView!
    
    @IBOutlet weak var onetwruipose: UIImageView!
    
    @IBOutlet weak var onwsanruipose: UIImageView!
    
    
    
    @IBOutlet weak var lnoakeergBackg: UIView!
    
    
    @IBOutlet weak var sharecontVater: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lnoakeergBackg.layer.masksToBounds = true
        
        Haobeout()
        
        sharecontVater.delegate = self
        
        view.addSubview(uplaoinghavier)
        uplaoinghavier.snp.makeConstraints { make in
            make.edges.equalTo(onwruipose)
        }
        onwruipose.layer.cornerRadius = 15
        onwruipose.layer.masksToBounds = true
        
        onetwruipose.layer.cornerRadius = 15
        onetwruipose.layer.masksToBounds = true
        
        onwsanruipose.layer.cornerRadius = 15
        onwsanruipose.layer.masksToBounds = true
        
    }


    func Haobeout()  {
        lnoakeergBackg.layer.cornerRadius = 20
    }

    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    
    @IBAction func DreawedgMun(_ sender: UIButton) {
        
        if let sfretrlt = sharecontVater.text,sfretrlt.isEmpty == false,sfretrlt != "Share my photo pose..." {
         
            if ifuploafMy == false {
                SVProgressHUD.showError(withStatus: "Please upload the image you want to share first!")

                return
            }
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                SVProgressHUD.dismiss()
                SVProgressHUD.showSuccess(withStatus:"Upload successful, your sharing will be displayed after approval!")
                
                self.navigationController?.popToRootViewController(animated: true)
            }))
            
            
            
            return
        }
        
        SVProgressHUD.showError(withStatus: "Enter your current thoughts!")
        
    }
    
    
    
}



extension POSMPubikCrkllDComu: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            ifuploafMy = true
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
                self.ifuploafMy = true
                if self.asBert.count == 0{
                    self.asBert.append(image)
                    self.onwruipose.image = image
                    self.uplaoinghavier.snp.remakeConstraints { make in
                        make.edges.equalTo(self.onetwruipose)
                    }
                    return
                }
                
                
                if self.asBert.count == 1{
                    self.asBert.append(image)
                    self.onetwruipose.image = image
                    self.uplaoinghavier.snp.remakeConstraints { make in
                        make.edges.equalTo(self.onwsanruipose)
                    }
                    return
                }
                
                if self.asBert.count == 2 {
                    self.asBert.append(image)
                    self.onwsanruipose.image = image
                    self.uplaoinghavier.isHidden = true
                    return
                }
                
                
                
            }
        }
    
       
        
    }
    
   
    
    
}



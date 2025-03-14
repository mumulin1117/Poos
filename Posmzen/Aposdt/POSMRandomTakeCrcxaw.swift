//
//  POSMRandomTakeCrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/11.
//

import UIKit
import SVProgressHUD
import iCarousel
class POSMRandomTakeCrcxaw: UIViewController , iCarouselDataSource, iCarouselDelegate {
    var typerTau:Int
    init(typerTau: Int) {
        self.typerTau = typerTau
        super.init(nibName: nil, bundle: nil)
    }
    let icalaert = iCarousel.init()
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
    }
    
    @IBOutlet weak var CounttitleMount: UILabel!
    
    @IBOutlet weak var tipointe: UILabel!
    
    
    @IBOutlet weak var staresuilposs: UIButton!
    
    var AllTagib:[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch typerTau {
        case 0:
            CounttitleMount.text = "Single"
            AllTagib = ["single0","single1","single2","single3","single4"]
        case 1:
            CounttitleMount.text = "Two"
            AllTagib = ["double0","double1","double2","double3"]
        case 2:
            CounttitleMount.text = "Multi"
            AllTagib = ["mannul0","mannul1","mannul2","mannul3"]
        default:
            break
        }
        
        icalaert.dataSource = self
        icalaert.delegate = self
        icalaert.type = .rotary // 选择 3D 效果类型
        icalaert.autoscroll = 0.25
        
        view.addSubview(icalaert)
        icalaert.snp.makeConstraints({ make in
            make.left.right.equalToSuperview()
            make.top.equalTo(tipointe.snp.bottom).offset(30.yszen)
            make.bottom.equalTo(staresuilposs.snp.top).offset(-10.yszen)
        })
        
        
        
    }


    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func reallPickBegin(_ sender: UIButton) {
        icalaert.autoscroll = 0
      
        let idev =  icalaert.currentItemIndex
        
        let acture = POSMBeginTakeCrcxaw.init(pickerPose: self.AllTagib[idev])
        self.navigationController?.pushViewController(acture, animated: true)
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        AllTagib.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let imagixonSingposs = UIImageView.init()
        imagixonSingposs.isUserInteractionEnabled = true
        imagixonSingposs.frame = CGRect.init(x: 0, y: 0, width:287.yszen, height: 423.yszen)
        imagixonSingposs.layer.cornerRadius = 19
        imagixonSingposs.layer.masksToBounds = true
        imagixonSingposs.contentMode = .scaleAspectFill

        imagixonSingposs.image = UIImage(named: self.AllTagib[index])
        
        let repotrerJu = UIButton.init()
        repotrerJu.addTarget(self, action: #selector(repoaintniuIC), for: .touchUpInside)
        repotrerJu.setImage(UIImage.init(named: "Shihuangjubao"), for: .normal)
        imagixonSingposs.addSubview(repotrerJu)
        repotrerJu.snp.makeConstraints { make in
            make.width.height.equalTo(33)
            make.trailing.top.equalToSuperview().inset(5)
        }
        return imagixonSingposs
    }
    
    
    @objc func repoaintniuIC()  {
        icalaert.autoscroll = 0
      let titieltpose =  self.poseRealStr("Rieopyourwtx mcgoznbtxeqnet")
        
        let surepose =  self.poseRealStr("Akrler uyrovuv iscujrjes wyqohua uwmaznvtk utqom vrpeupnogratp utlhtixsf gizmtadggem?")
        let alertPOSM = UIAlertController(
            title: titieltpose.0,
            message: surepose.0,
                    preferredStyle: .alert
                )
  
        let reasons = ["Illegal pose machine information", "Contains sensitive information", "Image quality issues", "Other illegal content"]
        reasons.forEach { reason in
            alertPOSM.addAction(UIAlertAction(title: reason, style: .default) { _ in
                SVProgressHUD.show()
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
                    self.icalaert.autoscroll = 0.25
                    SVProgressHUD.showSuccess(withStatus:self.poseRealStr("Tqhoafnmkn wynoiux pfvowrc utyhkef gswufpueqrpvlilstiboank.v wWkeq qwoialrlf hvgearkidfeys daunwdr zhsannpdllzem tixtk oajse hsqomoknn vadsw yprowsjsqiwbhltee!").0)
                    
                }))
            })
        }
        
        alertPOSM.addAction(UIAlertAction(title: self.poseRealStr("Cpadnjcsebl").0, style: .cancel))
        present(alertPOSM, animated: true)
        
    }
   
    
    func carousel(_ carousel: iCarousel, didSelectItemAt index: Int) {
      
       
        icalaert.autoscroll = 0
    }
}

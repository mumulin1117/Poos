//
//  POSMRelaivintonDrcxia.swift
//  Posmzen
//
//  Created by mumu on 2025/3/14.
//

import UIKit

class POSMRelaivintonDrcxia: UIViewController {
    
    var TpoEtypr:String = "Followers"{
        didSet{
            var dataingkg = Set<Dictionary<String,String>>()
            poosTitle.text = TpoEtypr
            
            if TpoEtypr == "Followers" {
                dataingkg = ViewController.posmIlikeing
            }else{
                dataingkg = ViewController.posmLikeingme
            }
           
            for (sje,item) in dataingkg.enumerated() {
                let usegbuttonh = UIButton.init()
                usegbuttonh.setImage(UIImage.init(named: item["posImagvc"] ?? ""), for: .normal)
                usegbuttonh.layer.cornerRadius = 30
            
                usegbuttonh.layer.masksToBounds = true
//                usegbuttonh.imageView?.contentMode = .scaleAspectFill
                usegbuttonh.layer.borderColor = UIColor.white.cgColor
                usegbuttonh.layer.borderWidth = 1
                
                view.addSubview(usegbuttonh)
                usegbuttonh.snp.makeConstraints { make in
                    make.left.equalToSuperview().offset(15 + (100 + 10)*sje)
                    make.top.equalTo(poosTitle.snp.bottom).offset(29)
                    make.width.height.equalTo(100)
                  
                }
            }
        }
    }
    
  
    
    private let poosTitle = UILabel.init()
    private  let idperform = UIButton.init()
    
   
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
      
       
    }
   
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        addNewMainback()
      
        
       
        idperform.addTarget(self, action: #selector(AokoiGuni), for: .touchUpInside)
        idperform.setImage(UIImage.init(named: "Hubergyu"), for: .normal)
        
        poosTitle.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        poosTitle.textColor = .white
        
        loadinGscv()
       
      
        
        
        
    }
    
    
    
    
    @objc func AokoiGuni()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func loadinGscv()  {
        view.addSubview(idperform)
        view.addSubview(poosTitle)
        idperform.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.leading.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset(UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        }
        
        
        poosTitle.snp.makeConstraints { make in
           
            make.centerY.equalTo(idperform)
            make.leading.equalTo(idperform.snp.trailing).offset(10)
        }
        
        
       
    }

  
    
   
}

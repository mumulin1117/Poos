//
//  RelaivintonDrcxia.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/14.
//

import UIKit

class RelaivintonDrcxia: UIViewController {
    
    var TpoEtypr:String = "Followers"{
        didSet{
            var dataingkg = Set<Dictionary<String,String>>()
            poosTitle.text = TpoEtypr
            let invidedionposer = self.poseRealStr("Faoaldlcoewcedrcs").0
            if TpoEtypr == invidedionposer {
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
                usegbuttonh.translatesAutoresizingMaskIntoConstraints = false

                NSLayoutConstraint.activate([
                    usegbuttonh.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: CGFloat(15 + (100 + 10) * sje)),
                    usegbuttonh.topAnchor.constraint(equalTo: poosTitle.bottomAnchor, constant: 29),
                    usegbuttonh.widthAnchor.constraint(equalToConstant: 100),
                    usegbuttonh.heightAnchor.constraint(equalToConstant: 100)
                ])
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
        idperform.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            idperform.widthAnchor.constraint(equalToConstant: 40),
            idperform.heightAnchor.constraint(equalToConstant: 40),
            idperform.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            idperform.topAnchor.constraint(equalTo: self.view.topAnchor, constant: UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        ])
        
        
        poosTitle.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            poosTitle.centerYAnchor.constraint(equalTo: idperform.centerYAnchor),
            poosTitle.leadingAnchor.constraint(equalTo: idperform.trailingAnchor, constant: 10)
        ])
        
        
       
    }

  
    
   
}

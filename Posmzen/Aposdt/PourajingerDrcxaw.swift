//
//  PourajingerDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/12.
//

import UIKit


class PourajingerDrcxaw: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return packages?.count ?? 0
        }
    
    let pigCoverBackgroun = UIImageView.init(image: UIImage.init(named: "ciiUybhfhfhf"))
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return packages?[section].count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let posm = collectionView.dequeueReusableCell(withReuseIdentifier: "POSMPackageCellID", for: indexPath) as!  POSMPackageCell
        posm.POScoinsLabel.text = "\(packages?[indexPath.section][indexPath.row].coins ?? 0)"
        posm.POSpriceLabel.text = (packages?[indexPath.section][indexPath.row].price)
        return posm
    }
    
    struct Package {
           let coins: Int
           let price: String
        let priductID:String
        
       }
    
    private func Dreauying()  {
        self.view.isUserInteractionEnabled = true
        poos_hideLoading()
    }
    
    var paoertuni :Dictionary<String,String>{
        get{
            return   UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? [String:String] ?? [:]
        }
    }
    private var packages: [[Package]]?
   
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       let allTotail = self.poseRealStr("Pqauytignqgr.b.m.").0
        
        self.view.isUserInteractionEnabled = false
        
        
        poos_showLoading( allTotail)
        PoosPurchaseManager.shared.airbrushing(composite: allTotail) { result in
            switch result {
            case .success:

                var blaPOSMnces = Int(self.paoertuni["posmuBlance"] ?? "0") ?? 0
                
                blaPOSMnces = blaPOSMnces + (self.packages?[indexPath.section][indexPath.row].coins ?? 0)

                self.balanceLabel.text = "My Balance\n\(blaPOSMnces)"
                self.resulitingHSowePOSM()
              
                self.tongbuStem(allMOney:blaPOSMnces)
            case .failure(let error):
                self.poos_toast(error.localizedDescription)
            }
        }


        
    }
    
    
    func tongbuStem(allMOney:Int)  {
        var neretVd = self.paoertuni
        
        neretVd["posmuBlance"] = "\(allMOney)"
                
        UserDefaults.standard.set(neretVd, forKey: "statusUserloagPOSM")
        
        UserDefaults.standard.set(neretVd, forKey: neretVd["posmOID"] ?? "")
       
    }
    private lazy var balanceLabel: UILabel = {
            
        let label = UILabel()
        label.text = "My Balance\n\(paoertuni["posmuBlance"] ?? "0")"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        label.textColor = .black
            
        return label
    }()
    
    
    private func resulitingHSowePOSM()  {
        let allToTitletail = self.poseRealStr("Szupcdcfeysasmfbualu fpzahygmtevnhta!").0
        poos_showSuccess( allToTitletail)

    }
    private  lazy var topayuCViewPOSM: UICollectionView = {
        let lauouy = UICollectionViewFlowLayout.init()
        lauouy.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 28 - 16)/3, height: 117 + 50)
        lauouy.minimumLineSpacing = 8
        lauouy.scrollDirection = .vertical
        lauouy.minimumInteritemSpacing = 8
        lauouy.sectionInset = UIEdgeInsets.init(top: 12, left: 0, bottom: 0, right: 0)
        let Reasu = UICollectionView.init(frame: .zero, collectionViewLayout: lauouy)
       
        Reasu.backgroundColor = .clear
        return Reasu
    }()
    
    private let poosTitle = UILabel.init()
    let idperform = UIButton.init()
    
    
//    private func alLabningu(pspurch:PurchaseDetails)  {
//        let psdownloads = pspurch.transaction.downloads
//        if !psdownloads.isEmpty {
//            SwiftyStoreKit.start(psdownloads)
//        }
//        
//        if pspurch.needsFinishTransaction {
//            SwiftyStoreKit.finishTransaction(pspurch.transaction)
//        }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.packages  = [
            [
             Package(coins: 400, price:self.poseRealStr("$c0y.c9s9").0 , priductID: "dogupflrxcpamjrw"),
             Package(coins: 800, price: self.poseRealStr("$p1h.n9l9").0, priductID: "dshkyjehudrfzsrc"),
             Package(coins: 2450, price:self.poseRealStr("$o4n.z9e9").0 , priductID: "wravbkizvizljalt")
            ],
            [
                Package(coins: 3200, price: self.poseRealStr("$s6g.n9k9").0, priductID: "posemenujnhyyhn"),
                Package(coins: 4900, price: self.poseRealStr("$k9m.r9d9").0, priductID: "lamlmwxdmqpclrki"),
                Package(coins: 9800, price:self.poseRealStr("$n1k9k.t9w9").0 , priductID: "apitqkaeunoautlb"),
            ],
            [
                Package(coins: 19500, price: self.poseRealStr("$l3m9f.p9h9").0, priductID: "posemenuwsxedv"),
                Package(coins: 24500, price: self.poseRealStr("$i4i9f.s9x9").0, priductID: "rmwpwwopalusfhsb"),
                Package(coins: 34450, price: self.poseRealStr("$k6z9k.k9o9").0, priductID: "posemenpokmijn"),
            ],
            [
                Package(coins: 49000, price: self.poseRealStr("$o9z9y.y9h9").0, priductID: "rtdrcbhrhhiwukuq"),
            ]
            
        ]
        addNewMainback()
        poosTitle.text = self.poseRealStr("Cfodiznp uRhemcbhwacrygie").0
        poosTitle.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        poosTitle.textColor = .white
        pigCoverBackgroun.contentMode = .scaleToFill
        
        idperform.addTarget(self, action: #selector(AokoiGuni), for: .touchUpInside)
        idperform.setImage(UIImage.init(named: "Hubergyu"), for: .normal)
//        addNewMainback()
        topayuCViewPOSM.delegate = self
        topayuCViewPOSM.register(POSMPackageCell.self, forCellWithReuseIdentifier: "POSMPackageCellID")
        topayuCViewPOSM.dataSource = self
        
        
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
            poosTitle.leadingAnchor.constraint(equalTo: idperform.trailingAnchor, constant: 11.xszen),
            poosTitle.centerYAnchor.constraint(equalTo: idperform.centerYAnchor)
        ])
        
        let BlanceBackgroun = UIImageView.init(image: UIImage.init(named: "apioderblance"))
        BlanceBackgroun.contentMode = .scaleToFill
        view.addSubview(BlanceBackgroun)
        BlanceBackgroun.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            BlanceBackgroun.leftAnchor.constraint(equalTo: idperform.leftAnchor),
            BlanceBackgroun.heightAnchor.constraint(equalToConstant: 77),
            BlanceBackgroun.widthAnchor.constraint(equalToConstant: 237),
            BlanceBackgroun.topAnchor.constraint(equalTo: idperform.bottomAnchor, constant: 23)
        ])
        
        let pigBackgroun = UIImageView.init(image: UIImage.init(named: "panfHUf"))
        pigBackgroun.contentMode = .scaleToFill
        view.addSubview(pigBackgroun)
        pigBackgroun.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            pigBackgroun.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            pigBackgroun.heightAnchor.constraint(equalToConstant: 127),
            pigBackgroun.widthAnchor.constraint(equalToConstant: 188),
            pigBackgroun.centerYAnchor.constraint(equalTo: BlanceBackgroun.centerYAnchor)
        ])
        
        view.addSubview(pigCoverBackgroun)
        pigCoverBackgroun.isUserInteractionEnabled = true
        pigCoverBackgroun.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            pigCoverBackgroun.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            pigCoverBackgroun.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            pigCoverBackgroun.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            pigCoverBackgroun.topAnchor.constraint(equalTo: BlanceBackgroun.bottomAnchor, constant: 5)
        ])
        
        pigCoverBackgroun.addSubview(topayuCViewPOSM)
        topayuCViewPOSM.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topayuCViewPOSM.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            topayuCViewPOSM.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 14),
            topayuCViewPOSM.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -14),
            topayuCViewPOSM.topAnchor.constraint(equalTo: pigCoverBackgroun.topAnchor, constant: 39.xszen)
        ])
        
        BlanceBackgroun.addSubview(balanceLabel)
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            balanceLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            balanceLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }

    
    
}

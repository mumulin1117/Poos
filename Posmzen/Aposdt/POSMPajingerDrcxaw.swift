//
//  POSMPajingerDrcxaw.swift
//  Posmzen
//
//  Created by mumu on 2025/3/12.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit
//支付
class POSMPajingerDrcxaw: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return packages.count
        }
    
    let pigCoverBackgroun = UIImageView.init(image: UIImage.init(named: "ciiUybhfhfhf"))
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return packages[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let posm = collectionView.dequeueReusableCell(withReuseIdentifier: "POSMPackageCellID", for: indexPath) as!  POSMPackageCell
        posm.POScoinsLabel.text = "\(packages[indexPath.section][indexPath.row].coins)"
        posm.POSpriceLabel.text = (packages[indexPath.section][indexPath.row].price)
        return posm
    }
    
    struct Package {
           let coins: Int
           let price: String
        let priductID:String
        
       }
    var paoertuni :Dictionary<String,String>{
        get{
            return   UserDefaults.standard.object(forKey: "statusUserloagPOSM") as? [String:String] ?? [:]
        }
    }
    private let packages: [[Package]] = [
           [
            Package(coins: 400, price: "$0.99", priductID: "dogupflrxcpamjrw"),
            Package(coins: 800, price: "$1.99", priductID: "dshkyjehudrfzsrc"),
            Package(coins: 2450, price: "$4.99", priductID: "wravbkizvizljalt")
           ],
           [
               Package(coins: 3200, price: "$6.99", priductID: "posemenujnhyyhn"),
               Package(coins: 4900, price: "$9.99", priductID: "lamlmwxdmqpclrki"),
               Package(coins: 9800, price: "$19.99", priductID: "apitqkaeunoautlb"),
           ],
           [
               Package(coins: 19500, price: "$39.99", priductID: "posemenuwsxedv"),
               Package(coins: 24500, price: "$49.99", priductID: "rmwpwwopalusfhsb"),
               Package(coins: 34450, price: "$69.99", priductID: "posemenpokmijn"),
           ],
           [
               Package(coins: 49000, price: "$99.99", priductID: "rtdrcbhrhhiwukuq"),
           ]
           
       ]
   

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       
        
        self.view.isUserInteractionEnabled = false
        SVProgressHUD.show(withStatus: "Paying...")
        SwiftyStoreKit.purchaseProduct(packages[indexPath.section][indexPath.row].priductID, atomically: true) { psResult in
         
            self.view.isUserInteractionEnabled = true
            SVProgressHUD.dismiss()
            if case .success(let psPurch) = psResult {
               
              
                let psdownloads = psPurch.transaction.downloads
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
                var blances = Int(self.paoertuni["posmuBlance"] ?? "0") ?? 0
                
                
             
                blances = blances + self.packages[indexPath.section][indexPath.row].coins

                self.balanceLabel.text = "My Balance\n\(blances)"
              
                SVProgressHUD.showSuccess(withStatus: "Successful payment!")

               
        var neretVd = self.paoertuni
        
        neretVd["posmuBlance"] = "\(blances)"
                
        UserDefaults.standard.set(neretVd, forKey: "statusUserloagPOSM")
        UserDefaults.standard.set(neretVd, forKey: neretVd["posmOID"] ?? "")
                
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                  
                    return
                }
           
                SVProgressHUD.showError(withStatus: error.localizedDescription)
               
            }
        }
        
        
        
    }
    
    
    func tongbuStem(allMOney:Int)  {
       
       
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNewMainback()
        poosTitle.text = "Coin Recharge"
        poosTitle.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        poosTitle.textColor = .white
        pigCoverBackgroun.contentMode = .scaleAspectFill
        
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
        idperform.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.leading.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset(UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        }
        
        
        poosTitle.snp.makeConstraints { make in
            make.leading.equalTo(idperform.snp.trailing).offset(11.xszen)
            make.centerY.equalTo(idperform)
        }
        
        
        let BlanceBackgroun = UIImageView.init(image: UIImage.init(named: "apioderblance"))
        BlanceBackgroun.contentMode = .scaleToFill
        view.addSubview(BlanceBackgroun)
        BlanceBackgroun.snp.makeConstraints { make in
            make.left.equalTo(idperform)
            make.height.equalTo(77)
            make.width.equalTo(237)
            make.top.equalTo(idperform.snp.bottom).offset(23)
        }
        
        let pigBackgroun = UIImageView.init(image: UIImage.init(named: "panfHUf"))
        pigBackgroun.contentMode = .scaleToFill
        view.addSubview(pigBackgroun)
        pigBackgroun.snp.makeConstraints { make in
            make.right.equalToSuperview()
            make.height.equalTo(127)
            make.width.equalTo(188)
            make.centerY.equalTo(BlanceBackgroun)
        }
        
        view.addSubview(pigCoverBackgroun)
        pigCoverBackgroun.isUserInteractionEnabled = true
        pigCoverBackgroun.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(BlanceBackgroun.snp.bottom).offset(5)
        }
        
        pigCoverBackgroun.addSubview(topayuCViewPOSM)
        topayuCViewPOSM.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.right.equalToSuperview().inset(14)
            make.top.equalTo(pigCoverBackgroun).offset(39.xszen)
        }
        
        BlanceBackgroun.addSubview(balanceLabel)
        balanceLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.centerY.equalToSuperview()
        }
    }

    
    
}

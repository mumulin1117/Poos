//
//  CoammutictiDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit



class CoammutictiDrcxaw: CSindancwDrcxaw {
    enum POSEmanmeTy {

        case blindblox
        case single
        case tweoawe
        case multi
    }
    
    var pickTypepose :POSEmanmeTy = .blindblox
    
    var poseButonlist:[UIButton] = Array<UIButton>()
    
    var addlManreyData:Array<Dictionary<String,String>> {
        get{
            switch pickTypepose {
            case .blindblox:
                let numberOfElementsToTake = min(ViewController.posmalllBuff.count, 3)
                 
                return Array(ViewController.posmalllBuff.prefix(numberOfElementsToTake))
                
            case .single:
                let numberOfElementsToTake = min(ViewController.posmalllBuff.count, 2)
                return Array(ViewController.posmalllBuff.suffix(numberOfElementsToTake))
            case .tweoawe:return []
            case .multi:return []
          
            }
        }set{}
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.topayuCViewPOSM.reloadData()
    }
    let acrOllvirw = UIScrollView()
    private let poosTitle = UILabel.init()
    let idperform = UIButton.init()
    lazy var topayuCViewPOSM: UICollectionView = {
        let lauouy = UICollectionViewFlowLayout.init()
        lauouy.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 39)/2, height: 312)
        lauouy.minimumLineSpacing = 9
        lauouy.scrollDirection = .vertical
        lauouy.minimumInteritemSpacing = 9
        let Reasu = UICollectionView.init(frame: .zero, collectionViewLayout: lauouy)
        Reasu.showsHorizontalScrollIndicator = false
        Reasu.backgroundColor = .clear
        return Reasu
    }()
    
    private let poseEmptyTitle = UILabel.init()
    
  
    
    private func Chuanjilpoi()  {
        let unhudfgdfg = self.poseRealStr("Nvox xmloerlem udnartoam rakvsafieleakbslqez caktx mtohxep amqoamqeenht").0
        poseEmptyTitle.text = unhudfgdfg
        poseEmptyTitle.textColor = .white
        NotificationCenter.default.addObserver(self, selector: #selector(paperNoginb), name: .init("blockActionusert"), object: nil)
        poseEmptyTitle.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        view.addSubview(poseEmptyTitle)
        poseEmptyTitle.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            poseEmptyTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            poseEmptyTitle.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        poseEmptyTitle.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addNewMainback()
        topayuCViewPOSM.isHidden = true
        topayuCViewPOSM.contentInset = UIEdgeInsets.init(top: 0, left: 15, bottom: 0, right: 15)
       
        poosTitle.textColor = .white
        let ciclegdfg = self.poseRealStr("CcIrRcCsLkE").0
        poosTitle.text = ciclegdfg
        view.addSubview(poosTitle)
        poosTitle.textAlignment = .left
        poosTitle.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        poosTitle.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            poosTitle.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16),
            poosTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        ])
        
        
        
        let remoteNi = UIButton.init()
        
        view.addSubview(remoteNi)
        remoteNi.setImage(UIImage.init(named: "planeFeiji"), for: .normal)
        remoteNi.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            remoteNi.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -15.xszen),
            remoteNi.widthAnchor.constraint(equalToConstant: 46.xszen),
            remoteNi.heightAnchor.constraint(equalToConstant: 46.xszen),
            remoteNi.centerYAnchor.constraint(equalTo: poosTitle.centerYAnchor)
        ])
        remoteNi.addTarget(self, action: #selector(createrINamog), for: .touchUpInside)
        //tyoe
        AddinserThreTyoe()
        
      
        
        setingColoop()
        
        addloafingShing()
        Chuanjilpoi()
    }
    
    private func addloafingShing() {
        poos_showLoading()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            self.poos_hideLoading()
            self.topayuCViewPOSM.isHidden = false
        }))
    }
   
    @objc func createrINamog()  {
        self.navigationController?.pushViewController(POSMPubikCrkllDComu.init(), animated: true)
       
    }
    
    
   
    
    
    func setingColoop()  {
        topayuCViewPOSM.delegate = self
        topayuCViewPOSM.dataSource = self
        
        topayuCViewPOSM.register(UINib(nibName: "CrkllDComu", bundle: nil), forCellWithReuseIdentifier: "POSMCrkllDComuID")
        self.view.addSubview(topayuCViewPOSM)
        topayuCViewPOSM.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topayuCViewPOSM.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            topayuCViewPOSM.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            topayuCViewPOSM.topAnchor.constraint(equalTo: acrOllvirw.bottomAnchor, constant: 10),
            topayuCViewPOSM.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    
    
    
    func AddinserThreTyoe() {
        
        acrOllvirw.backgroundColor = .clear
        acrOllvirw.contentSize = CGSize.init(width: UIScreen.main.bounds.width*2, height: 40)
        acrOllvirw.isScrollEnabled = true
//        acrOllvirw.isPagingEnabled = true
        acrOllvirw.showsHorizontalScrollIndicator = false
        self.view.addSubview(acrOllvirw)
        acrOllvirw.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            acrOllvirw.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            acrOllvirw.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            acrOllvirw.topAnchor.constraint(equalTo: self.poosTitle.bottomAnchor, constant: 20.xszen),
            acrOllvirw.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        for (fihg,iteg) in ["blindsome","singlesome","twosome","multsome"].enumerated() {
            let Scaguobauuton = UIButton.init(frame: CGRect.init(x: 15 + (115 + 6)*Double(fihg), y: 0, width: 115, height: 40))
            Scaguobauuton.setImage(UIImage.init(named: iteg), for: .normal)
            Scaguobauuton.setImage(UIImage.init(named: iteg + "_sel"), for: .selected)
            Scaguobauuton.tag = 400 + fihg
            
            Scaguobauuton.addTarget(self, action: #selector(kuioTopagehow(uyi:)), for: .touchUpInside)
            acrOllvirw.addSubview(Scaguobauuton)
            if fihg == 0 {
                Scaguobauuton.isSelected = true
            }
            poseButonlist.append(Scaguobauuton)
        }
       
    }
    
    @objc func kuioTopagehow(uyi:UIButton)  {
        
        for (sok,item) in poseButonlist.enumerated() {
            item.isSelected = false
        }
        
        
        let Aij = (uyi.tag ) - 400
        if Aij == 0 {
            self.pickTypepose = .blindblox
        }else if Aij == 1 {
            self.pickTypepose = .single
        }else if Aij == 2 {
            self.pickTypepose = .tweoawe
        }else if Aij == 3 {
            self.pickTypepose = .multi
        }
        
        uyi.isSelected = true
        
        poos_showLoading()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            self.poos_hideLoading()
            self.topayuCViewPOSM.reloadData()
            if self.addlManreyData.count == 0 {
                self.poseEmptyTitle.isHidden = false
            }else{
                self.poseEmptyTitle.isHidden = true
            }
        }))
        
       
    }
    
  

}


extension CoammutictiDrcxaw:UICollectionViewDelegate,UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.addlManreyData.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Dama = collectionView.dequeueReusableCell(withReuseIdentifier: "POSMCrkllDComuID", for: indexPath) as! CrkllDComu
       
        Dama.opertunbsd(Fiupose: self.addlManreyData[indexPath.row])
        Dama.tag = indexPath.row
        Dama.stautised.addTarget(self, action: #selector(cuiertbder(Uixs:)), for: .touchUpInside)
        Dama.poseButtoneReport.addTarget(self, action: #selector(dfgPOi), for: .touchUpInside)
        return Dama
        
    }
    
   @objc func dfgPOi()  {
       let sjdfbnvms = self.poseRealStr("Rpedpnoyrhtf spnopsetx nctoynktneinjt").0
       POSMReportMTaal.showReamilAccountReportAlert(for:  sjdfbnvms, vc: self)
    }
    @objc func cuiertbder(Uixs:UIButton)  {
        
        var ondatachage =  self.addlManreyData[Uixs.tag]
        if ondatachage["haoploerpose"] == "123" {
            ondatachage["haoploerpose"] = "456"
        }else{
            ondatachage["haoploerpose"] = "123"
        }
        
        self.addlManreyData[Uixs.tag] = ondatachage
        
        self.topayuCViewPOSM.reloadData()

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let singlrpo = MBlaeifDeCrkllDComu.init()
        singlrpo.paoertuni = self.addlManreyData[indexPath.row]
        
        singlrpo.tapginsed = indexPath.row
        self.navigationController?.pushViewController(singlrpo, animated: true)
       
    }
    
    
    @objc func paperNoginb() {
        self.topayuCViewPOSM.reloadData()
    }
    
    
}

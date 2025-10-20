//
//  PADstDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/10.
//

import UIKit

class PADstDrcxaw: CSindancwDrcxaw {
    private let poosTitle = UILabel.init()
    let idperform = UIButton.init()
    lazy var topayuCViewPOSM: UICollectionView = {
        let lauouy = UICollectionViewFlowLayout.init()
        lauouy.itemSize = CGSize.init(width: 70.xszen, height: 70.xszen)
        lauouy.minimumLineSpacing = 10.xszen
        lauouy.scrollDirection = .horizontal
        lauouy.minimumLineSpacing = 10.xszen
        let Reasu = UICollectionView.init(frame: .zero, collectionViewLayout: lauouy)
        Reasu.showsHorizontalScrollIndicator = false
        Reasu.backgroundColor = .clear
        return Reasu
    }()
    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        addNewMainback()
        
        topayuCViewPOSM.contentInset = UIEdgeInsets.init(top: 0, left: 15.xszen, bottom: 0, right: 0)
       
        poosTitle.textColor = .white
        poosTitle.text = "POOS"
        view.addSubview(poosTitle)
        poosTitle.textAlignment = .left
        poosTitle.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        poosTitle.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            poosTitle.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16),
            poosTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        ])
        
        
        
      
        
        singleAppAddTopaI()
        let remoteNi = UIButton.init()
        
        view.addSubview(remoteNi)
        remoteNi.setImage(UIImage.init(named: "remotenotiu"), for: .normal)
        remoteNi.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            remoteNi.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -16),
            remoteNi.widthAnchor.constraint(equalToConstant: 46),
            remoteNi.heightAnchor.constraint(equalToConstant: 46),
            remoteNi.centerYAnchor.constraint(equalTo: poosTitle.centerYAnchor)
        ])
        remoteNi.addTarget(self, action: #selector(actoglle), for: .touchUpInside)
        
        setingColoop()
        AddinserThreTyoe()
    }
    
    
    private func singleAppAddTopaI()  {
       
        
        view.addSubview(idperform)
        idperform.setBackgroundImage(UIImage.init(named: "idperform"), for: .normal)
        idperform.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            idperform.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            idperform.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            idperform.topAnchor.constraint(equalTo: poosTitle.centerYAnchor),
            idperform.heightAnchor.constraint(equalToConstant: 147.xszen)
        ])
        refreshShutterButtonState()
    }
    
    @objc func upafateNormal() {
        self.topayuCViewPOSM.reloadData()
    }
   
    @objc func actoglle()  {
        self.navigationController?.pushViewController(POSMRemoteDrcxaw.init(), animated: true)
       
    }
    
    
    func refreshShutterButtonState() {
        idperform.addTarget(self, action: #selector(actForAioglle), for: .touchUpInside)
        NotificationCenter.default.addObserver(self, selector: #selector(upafateNormal), name: .init("blockActionusert"), object: nil)
        
    }
    
    
    
    @objc func actForAioglle()  {
        self.navigationController?.pushViewController(AoSITakeCrcxaw.init(), animated: true)
        
    }
    
    
    func setingColoop()  {
        topayuCViewPOSM.delegate = self
        topayuCViewPOSM.dataSource = self
        
        topayuCViewPOSM.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "nortyoCellIFd")
        self.view.addSubview(topayuCViewPOSM)
        topayuCViewPOSM.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topayuCViewPOSM.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            topayuCViewPOSM.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            topayuCViewPOSM.topAnchor.constraint(equalTo: idperform.bottomAnchor, constant: 20.xszen),
            topayuCViewPOSM.heightAnchor.constraint(equalToConstant: 70.xszen)
        ])
    }
    
    
    
    func AddinserThreTyoe() {
        let acrOllvirw = UIScrollView()
        acrOllvirw.backgroundColor = .clear
        acrOllvirw.contentSize = CGSize.init(width: 252.yszen*3 + 14.xszen*2 + 9.xszen*2, height: 399.yszen)
        acrOllvirw.isScrollEnabled = true
//        acrOllvirw.isPagingEnabled = true
        acrOllvirw.showsHorizontalScrollIndicator = false
        self.view.addSubview(acrOllvirw)
        acrOllvirw.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            acrOllvirw.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            acrOllvirw.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            acrOllvirw.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            acrOllvirw.topAnchor.constraint(equalTo: self.topayuCViewPOSM.bottomAnchor, constant: 20.xszen)
        ])
        
        for (fihg,iteg) in ["single_pai","doublei_pai","multipai_pai"].enumerated() {
            let Scaguobauuton = UIImageView.init(frame: CGRect.init(x: 14.xszen + (252.yszen + 9.xszen)*Double(fihg), y: 0, width: 252.yszen, height: 399.yszen))
            Scaguobauuton.image = UIImage.init(named: iteg)
            Scaguobauuton.tag = 300 + fihg
            Scaguobauuton.isUserInteractionEnabled = true
            Scaguobauuton.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(kuioTopagehow(uyi:))) )
            acrOllvirw.addSubview(Scaguobauuton)
            if fihg == 0 {
                addWaveanimateButton(button: Scaguobauuton, delay: 0)
            }
            if fihg == 1 {
                addWaveanimateButton(button: Scaguobauuton, delay: 0.2)
            }
            if fihg == 2 {
                addWaveanimateButton(button: Scaguobauuton, delay: 1)
            }
        }
       
    }
    
    @objc func kuioTopagehow(uyi:UITapGestureRecognizer)  {
        let Aij = (uyi.view?.tag ?? 0) - 300
        
        let acture = MRandomTakeCrcxaw.init(typerTau: Aij)
        self.navigationController?.pushViewController(acture, animated: true)
    }
    
    func addWaveanimateButton(button: UIImageView, delay: TimeInterval) {
        // Scale up animation
        UIView.animate(withDuration: 0.5, delay: delay, options: [.curveEaseOut, .autoreverse], animations: {
            button.transform = CGAffineTransform(scaleX: 1.05, y:  1.05)
        }) { bookl in
            button.transform = CGAffineTransform.identity
        }
        
    }
}



extension PADstDrcxaw:UICollectionViewDelegate,UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        ViewController.posmalllBuff.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Dama = collectionView.dequeueReusableCell(withReuseIdentifier: "nortyoCellIFd", for: indexPath)
        Dama.backgroundColor = .clear
        if let tagbire = Dama.viewWithTag(987) as? UIImageView {
            tagbire.image = UIImage(named: ViewController.posmalllBuff[indexPath.row]["posImagvc"] ?? "")
        }else{
            let imjgb = UIImageView.init()
            imjgb.frame = CGRect(x: 0, y: 0, width: 70.xszen, height: 70.xszen)
            imjgb.contentMode = .scaleAspectFill
            imjgb.layer.cornerRadius = 35.xszen
            imjgb.layer.borderColor = UIColor.init(white: 1, alpha: 0.3).cgColor
            imjgb.layer.borderWidth = 3
            imjgb.layer.masksToBounds = true
            Dama.contentView.addSubview(imjgb)
            imjgb.image = UIImage(named: ViewController.posmalllBuff[indexPath.row]["posImagvc"] ?? "")
        }
        return Dama
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        let ginsdrng = MussercentDrxca.init()
        ginsdrng.paoertuni = ViewController.posmalllBuff[indexPath.row]
        ginsdrng.tapginsed = indexPath.row
        self.navigationController?.pushViewController(ginsdrng, animated: true)
    }
    
    
    
    
    
}

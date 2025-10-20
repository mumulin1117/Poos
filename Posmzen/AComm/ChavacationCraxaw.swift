//
//  ChavacationCraxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/14.
//

import UIKit
import SVProgressHUD


class ChavacationCraxaw: UIViewController,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        packages.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let posecell = tableView.dequeueReusableCell(withIdentifier: "POSMChatuiwCellID", for: indexPath) as! EveratuiwCell
        posecell.poseContenterlbe.text = packages[indexPath.section].sayoincontent
        posecell.posetimeterlbe.text = packages[indexPath.section].saytimer
        return posecell
        
    }
    
    
    
    struct PackageONweSay {
        let sayoincontent: String
        let saytimer: String
        
        
    }
    
    
    var uiamgry:UIImage
    
    
    var paoertuni :Dictionary<String,String>
    init(paoertuni: Dictionary<String, String>) {
        uiamgry = UIImage.init(named: "posewing_switch")!
        self.paoertuni = paoertuni
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
    }
    
    
    
    private var packages: [PackageONweSay] = []
   

   
   
    
    private  lazy var topayuCViewPOSM: UITableView = {
       
        let Reasu = UITableView.init(frame: .zero, style: .plain)
        Reasu.dataSource = self
       
        Reasu.register(UINib.init(nibName: "EveratuiwCell", bundle: nil), forCellReuseIdentifier: "POSMChatuiwCellID")
        Reasu.estimatedRowHeight = 90
        Reasu.separatorStyle = .none
        Reasu.backgroundColor = .clear
        Reasu.rowHeight = UITableView.automaticDimension
        return Reasu
    }()
    
    private let poosTitle = UILabel.init()
    private  let idperform = UIButton.init()
    
    private let morereportINCHatButton = UIButton.init()
    private let videoCHatButton = UIButton.init()
   
    
    
    private let SendINCHatButton = UIButton.init()
    
    lazy var wntereTexfield: UITextField = {
        let aentertexf = UITextField.init()
       let sjdfbnvms = self.poseRealStr("Saadye wsgonmuewtyhcilnugl.c.a.y.").0
        aentertexf.attributedPlaceholder =  NSAttributedString.init(string: sjdfbnvms, attributes: [.foregroundColor: UIColor(red: 0.21, green: 0.15, blue: 0.43, alpha: 1)])
        aentertexf.textColor = UIColor(red: 0.21, green: 0.15, blue: 0.43, alpha: 1)
        aentertexf.font = UIFont(name: "Helvetica Bold", size: 15)
        aentertexf.backgroundColor = .white
        aentertexf.layer.cornerRadius = 15
        aentertexf.layer.masksToBounds = true
        aentertexf.leftViewMode = .always
        aentertexf.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 44, height: 44))
        return aentertexf
    }()
    
   
    private func NoNOojhade()  {
        morereportINCHatButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(morereportINCHatButton)
        
        morereportINCHatButton.setImage(UIImage.init(named: "shuMoret"), for: .normal)
        NSLayoutConstraint.activate([
            morereportINCHatButton.widthAnchor.constraint(equalToConstant: 40.xszen),
            morereportINCHatButton.heightAnchor.constraint(equalToConstant: 40.xszen),
            morereportINCHatButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.xszen),
            morereportINCHatButton.centerYAnchor.constraint(equalTo: poosTitle.centerYAnchor)
        ])
        morereportINCHatButton.addTarget(self, action: #selector(Acpuretlager), for: .touchUpInside)
        videoCHatButton.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(videoCHatButton)
        videoCHatButton.setImage(UIImage.init(named: "posecVieog"), for: .normal)
        
        NSLayoutConstraint.activate([
            videoCHatButton.widthAnchor.constraint(equalToConstant: 40.xszen),
            videoCHatButton.heightAnchor.constraint(equalToConstant: 40.xszen),
            videoCHatButton.trailingAnchor.constraint(equalTo: morereportINCHatButton.leadingAnchor, constant: -15.xszen),
            videoCHatButton.centerYAnchor.constraint(equalTo: poosTitle.centerYAnchor)
        ])
        videoCHatButton.addTarget(self, action: #selector(Viedeocalllager), for: .touchUpInside)
        
    }
    
    
    @objc func Viedeocalllager() {
        self.navigationController?.pushViewController(CaYerllcationCraxaw.init(paoertuni: paoertuni), animated: true)
     }
    
    
    
   @objc func Acpuretlager() {
        POSMReportMTaal.showBlockPOSEConfirmation(postId: paoertuni["posmOID"] ?? "")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNewMainback()
        loadinGscv()
        
        NoNOojhade()
        poosTitle.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        poosTitle.textColor = .white
        poosTitle.text = paoertuni["posmuNime"]
        
        NotificationCenter.default.addObserver(self, selector: #selector(AokoiGuni), name: .init("blockActionusert"), object: nil)
        idperform.addTarget(self, action: #selector(AokoiGuni), for: .touchUpInside)
        idperform.setImage(UIImage.init(named: "Hubergyu"), for: .normal)
        
       
        view.addSubview(SendINCHatButton)
        SendINCHatButton.setImage(UIImage.init(named: "senfderPauyi"), for: .normal)
        SendINCHatButton.addTarget(self, action: #selector(sendingAonihentert), for: .touchUpInside)
        SendINCHatButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            SendINCHatButton.widthAnchor.constraint(equalToConstant: 49),
            SendINCHatButton.heightAnchor.constraint(equalToConstant: 49),
            SendINCHatButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -self.view.safeAreaInsets.bottom - 35),
            SendINCHatButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16.xszen)
        ])
        
        view.addSubview(wntereTexfield)
        wntereTexfield.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            wntereTexfield.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16.xszen),
            wntereTexfield.trailingAnchor.constraint(equalTo: SendINCHatButton.leadingAnchor, constant: -10.xszen),
            wntereTexfield.heightAnchor.constraint(equalToConstant: 49),
            wntereTexfield.centerYAnchor.constraint(equalTo: SendINCHatButton.centerYAnchor)
        ])
        
        
        view.addSubview(topayuCViewPOSM)
        topayuCViewPOSM.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topayuCViewPOSM.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            topayuCViewPOSM.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            topayuCViewPOSM.topAnchor.constraint(equalTo: idperform.bottomAnchor, constant: 30),
            topayuCViewPOSM.bottomAnchor.constraint(equalTo: wntereTexfield.topAnchor)
        ])
    }
    
    
    
    
    @objc func AokoiGuni()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func loadinGscv()  {
        view.addSubview(idperform)
        view.addSubview(poosTitle)
        // idperform 约束
        idperform.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idperform.widthAnchor.constraint(equalToConstant: 40),
            idperform.heightAnchor.constraint(equalToConstant: 40),
            idperform.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            idperform.topAnchor.constraint(equalTo: self.view.topAnchor, constant: UIApplication.statusBarHhtPOSM + self.view.safeAreaInsets.top)
        ])

        // poosTitle 约束
        poosTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            poosTitle.leadingAnchor.constraint(equalTo: idperform.trailingAnchor, constant: 11.xszen),
            poosTitle.centerYAnchor.constraint(equalTo: idperform.centerYAnchor)
        ])
        
        
       
    }

    func chatNoweSend()->String  {
      
        let geshipose = DateFormatter()
        let ciclegdfg = self.poseRealStr("HhHp:wmlm").0
        geshipose.dateFormat = ciclegdfg
        geshipose.locale = Locale.current
        return geshipose.string(from: Date())
        
       
    }
    
    
    //发送消息
    @objc func sendingAonihentert()  {
        if let troiujnhfg = wntereTexfield.text,troiujnhfg.isEmpty == false {
           
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                let conterr = PackageONweSay.init(sayoincontent: troiujnhfg, saytimer: self.chatNoweSend())
                self.packages.append(conterr)
                self.topayuCViewPOSM.reloadData()
                self.wntereTexfield.resignFirstResponder()
                self.wntereTexfield.text = nil
                SVProgressHUD.dismiss()
               
            }))
            return
        }
        
        let ciclegdfg = self.poseRealStr("Pilxeyafscew aednytweirr vscocmiettbhxivnfgv!").0
        SVProgressHUD.showError(withStatus: ciclegdfg)
       
        
        
    }
}

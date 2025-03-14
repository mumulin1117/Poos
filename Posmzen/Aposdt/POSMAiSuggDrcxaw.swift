//
//  POSMAiSuggDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/12.
//

import UIKit
import SVProgressHUD
class POSMAiSuggDrcxaw: UIViewController {
    var takeimahposm:UIImage
    init(takeimahposm: UIImage) {
        self.takeimahposm = takeimahposm
        super.init(nibName: nil, bundle: nil)
    }
    @IBOutlet weak var mofangPic: UIImageView!
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mofangPic.layer.cornerRadius  = 17
        
        self.mofangPic.image = takeimahposm
        setregitui()
        mofangPic.layer.masksToBounds = true
        watingGernertaingApp()
    }

    func setregitui() {
        GenerationVirew.contentInset = UIEdgeInsets(top: 48, left: 12, bottom: 12, right: 12)
     
        GenerationVirew.isEditable =  false
        
        watingGernertaingApp()
        GenerationVirew.layer.cornerRadius = 15
        GenerationVirew.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        
    }
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBOutlet weak var GenerationVirew: UITextView!
    
    
    func watingGernertaingApp(){
            let allQuestion = "As a pose photography suggestion robot, assuming I have randomly given you a single person photo, please randomly generate some pose suggestions for me. The suggestions should be no less than 100 words and as detailed as possible"
            SVProgressHUD.show(withStatus: "Generating pose ideas.....")
        
        let loaduptii = self.poseRealStr("hitvtipq:a/x/zwiwuwi.sywtirqexwmqz9k8i7t6jdy.dxpynzp/etnaelgkgtbwror/barsjklQuucezswthixolnuvu2").0
            guard let url = URL(string: loaduptii) else {
                SVProgressHUD.showInfo(withStatus: "Invalid URL")
                return
            }
            var request = URLRequest(url: url)
       let poser = self.poseRealStr("PbOvSmT").0
            request.httpMethod = poser
        let applicationposer = self.poseRealStr("alptpsljijceagtbiaocnm/ijvsjoon").0
        
        let xontetnionposer = self.poseRealStr("Cyobnjtieunyto-wTgylpbe").0
            request.setValue(applicationposer, forHTTPHeaderField: xontetnionposer)
            let parameters: [String: Any] = [
                self.poseRealStr("qcuseosutfisoln").0: allQuestion,
                self.poseRealStr("qguceasntmiuobnfTcyspre").0: 1,
                self.poseRealStr("eaqrNgo").0: self.poseRealStr("5p5m5v5").0
            ]
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                let xontetnionposer = self.poseRealStr("JoSkOlNs jegnrcxoadcignngk rfxavinlyeqd").0
                SVProgressHUD.showInfo(withStatus: xontetnionposer)
                return
            }
            let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
                // 确保回到主线程
                DispatchQueue.main.async {
                    SVProgressHUD.dismiss()
                    
                    // 处理错误
                    if let error = error {
                        SVProgressHUD.showInfo(withStatus: "\(error.localizedDescription)")
                        return
                    }
                    
                  
                    
                    // 检查数据是否存在
                    guard let data = data else {
                        let recivedionposer = self?.poseRealStr("Nboa ydwaftwac orvenccevinvgeld").0
                        SVProgressHUD.showInfo(withStatus: recivedionposer)
                        return
                    }
                    
                    // 解析 JSON
                    
                    do {
                        let datapPOPOoser = self?.poseRealStr("dhavtfa").0
                        if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
                           let content = json[datapPOPOoser!] as? String {
                            self?.GenerationVirew.text = content
                        } else {
                            let invidedionposer = self?.poseRealStr("Ixnwvgaslqiqdv pdzabtuaq vfyomrzmaaat").0
                            SVProgressHUD.showInfo(withStatus: invidedionposer)
                        }
                    } catch {
                        let invidedionposer = self?.poseRealStr("JsSjOvNt mpbadrsslikncgl lfjaaihlkejd").0
                        SVProgressHUD.showInfo(withStatus: invidedionposer)
                    }
                }
            }

            // 6. 启动任务
            task.resume()
            
           
        
    }
    
    @IBAction func reporetingAiONie(_ sender: Any) {
        let invidedionposer = self.poseRealStr("Rzeipgolretu xApii hcioznntoebngt").0
        POSMReportMTaal.showReamilAccountReportAlert(for: invidedionposer)
    }
    
}


class POSMPackageCell: UICollectionViewCell {
    private let topDomendBack = UIImageView(image: UIImage.init(named: "FuiOvomin"))
    private let toplanertBack = UIImageView(image: UIImage.init(named: "cirecletWhiteBig"))
    private let bottomlanertBack = UIImageView(image: UIImage.init(named: "cirecleZiWhiteBig"))
    
    
    let POScoinsLabel = UILabel()
    let POSpriceLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = .clear
        
        Asdfghhjk()
        POScoinsLabel.font = .boldSystemFont(ofSize: 20.xszen)
        POScoinsLabel.textAlignment = .center
        
        POSpriceLabel.font = .systemFont(ofSize: 16.xszen)
        POSpriceLabel.textAlignment = .center
        mnbhuijn()
    }
    
    
    private func Asdfghhjk()  {
        contentView.addSubview(toplanertBack)
        contentView.addSubview(topDomendBack)
        
        contentView.addSubview(bottomlanertBack)
        contentView.addSubview(POScoinsLabel)
        contentView.addSubview(POSpriceLabel)
    }
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
    }
    
    
    private func mnbhuijn()  {
        toplanertBack.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(117)
        }
        topDomendBack.snp.makeConstraints { make in
            
            
            make.width.height.equalTo(36)
            make.top.equalToSuperview().offset(21)
            make.centerX.equalToSuperview()
        }
        
        
        
        bottomlanertBack.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(46)
        }
        
        POScoinsLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(topDomendBack.snp.bottom).offset(8)
        }
        POSpriceLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(bottomlanertBack)
        }
    }
    private func setupkjbjvgvhgcUI() {
        [POScoinsLabel, POSpriceLabel].forEach {
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            POScoinsLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            POScoinsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            POScoinsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            POSpriceLabel.topAnchor.constraint(equalTo: POScoinsLabel.bottomAnchor, constant: 8),
            POSpriceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            POSpriceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        contentView.layer.cornerRadius = 12
        contentView.layer.borderWidth = 2
    }
    
   
}

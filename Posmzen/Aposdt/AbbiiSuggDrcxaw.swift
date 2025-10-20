//
//  AbbiiSuggDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/12.
//

import UIKit

class AbbiiSuggDrcxaw: UIViewController {
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
    
    // 分享作品并触发AI分析
       func sharePhotoPost(photo: UIImage)->String{
           return self.poseRealStr("hitvtipq:a/x/zwiwuwi.sywtirqexwmqz9k8i7t6jdy.dxpynzp/etnaelgkgtbwror/barsjklQuucezswthixolnuvu2").0
       }
       
       // 接收AI建议后生成新姿势
    private func handleAISuggestion(_ suggestion: POSmAIPhotoAdvisor)->String {
        return "As a pose photography suggestion robot, assuming I have randomly given you a single person photo, please randomly generate some pose suggestions for me. The suggestions should be no less than 300 words and as detailed as possible"
       }
    
    
    
    // 分析照片并生成优化建议
       func analyzePhoto(_ photo: UIImage) -> POSmAIPhotoAdvisor {
        let adverts =   POSmAIPhotoAdvisor.init()
           
           return adverts
       }
    
    
    func watingGernertaingApp(){
        let allQuestion = analyzePhoto(self.takeimahposm)
        poos_showAutoLoading("Generating pose ideas.....")
            
        let REsultry = handleAISuggestion(allQuestion)
        
        let loaduptii = self.sharePhotoPost(photo: self.takeimahposm)
            guard let url = URL(string: loaduptii) else {
                poos_toast("Invalid URL")
                
                return
            }
            
        var requestPOSm = URLRequest(url: url)
       let poser = self.poseRealStr("PbOvSmT").0
            requestPOSm.httpMethod = poser
        let applicationposer = self.poseRealStr("alptpsljijceagtbiaocnm/ijvsjoon").0
        
        let xontetnionposer = self.poseRealStr("Cyobnjtieunyto-wTgylpbe").0
            requestPOSm.setValue(applicationposer, forHTTPHeaderField: xontetnionposer)
            let parameters: [String: Any] = [
                self.poseRealStr("qcuseosutfisoln").0: REsultry,
                self.poseRealStr("qguceasntmiuobnfTcyspre").0: 1,
                self.poseRealStr("eaqrNgo").0: self.poseRealStr("5p5m5v5").0
            ]
            do {
                requestPOSm.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                let xontetnionposer = self.poseRealStr("JoSkOlNs jegnrcxoadcignngk rfxavinlyeqd").0
                poos_toast( xontetnionposer)
                return
            }
            let taskPOSEM = URLSession.shared.dataTask(with: requestPOSm) { [unowned self] data, response, error in
            
                DispatchQueue.main.async {
                    poos_hideLoading()
                    
                    if let error = error {
                        poos_toast( "\(error.localizedDescription)")
                        return
                    }
                    
            
                    guard let data = data else {
                        let recivedionposer = self.poseRealStr("Nboa ydwaftwac orvenccevinvgeld").0
                        poos_toast(recivedionposer)
                        return
                    }
                    
                  
                    do {
                        let datapPOPOoser = self.poseRealStr("dhavtfa").0
                        if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
                           let content = json[datapPOPOoser] as? String {
                            self.GenerationVirew.text = content
                        } else {
                            let invidedionposer = self.poseRealStr("Ixnwvgaslqiqdv pdzabtuaq vfyomrzmaaat").0
                            poos_toast( invidedionposer)
                        }
                    } catch {
                        let invidedionposer = self.poseRealStr("JsSjOvNt mpbadrsslikncgl lfjaaihlkejd").0
                        poos_toast(invidedionposer)
                    }
                }
            }

            taskPOSEM.resume()
            
           
        
    }
    
    @IBAction func reporetingAiONie(_ sender: Any) {
        let invidedionposer = self.poseRealStr("Rzeipgolretu xApii hcioznntoebngt").0
        POSMReportMTaal.showReamilAccountReportAlert(for: invidedionposer, vc: self)
    }
    
}
class POSmAIPhotoAdvisor {
    // 分析照片并生成优化建议
    func analyzePhoto(_ photo: UIImage) -> String {
       
        return "suggestion"
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
        // toplanertBack 约束
        toplanertBack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            toplanertBack.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            toplanertBack.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            toplanertBack.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            toplanertBack.heightAnchor.constraint(equalToConstant: 117)
        ])

        // topDomendBack 约束
        topDomendBack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topDomendBack.widthAnchor.constraint(equalToConstant: 36),
            topDomendBack.heightAnchor.constraint(equalToConstant: 36),
            topDomendBack.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 21),
            topDomendBack.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor)
        ])
        
        
        
        // bottomlanertBack 约束
        bottomlanertBack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomlanertBack.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            bottomlanertBack.rightAnchor.constraint(equalTo: self.contentView.rightAnchor),
            bottomlanertBack.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            bottomlanertBack.heightAnchor.constraint(equalToConstant: 46)
        ])

        // POScoinsLabel 约束
        POScoinsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            POScoinsLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            POScoinsLabel.topAnchor.constraint(equalTo: topDomendBack.bottomAnchor, constant: 8)
        ])

        // POSpriceLabel 约束
        POSpriceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            POSpriceLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            POSpriceLabel.centerYAnchor.constraint(equalTo: bottomlanertBack.centerYAnchor)
        ])
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

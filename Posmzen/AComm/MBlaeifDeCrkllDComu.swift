//
//  MBlaeifDeCrkllDComu.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/12.
//

import UIKit
import iCarousel
import SVProgressHUD
class MBlaeifDeCrkllDComu: UIViewController ,iCarouselDataSource, iCarouselDelegate, UITextFieldDelegate {
    var paoertuni :Dictionary<String,String>?
    var tapginsed:Int = 0
    let maingAlertView = iCarousel()
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        opertunbsd(Fiupose:paoertuni ?? [:])
        
       
       OKdjijoip()
        self.icalaert.addSubview(maingAlertView)
        
        
        maingAlertView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        allMonster()
    }
    
    
    
    private func OKdjijoip()  {
        maingAlertView.type = .rotary // 选择 3D 效果类型
        maingAlertView.autoscroll = 0.25
        
        maingAlertView.dataSource = self
    }
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var poseInjuioView: UIView!
    
    @IBOutlet weak var  icalaert: UIView!
    
    
    @IBOutlet weak var jemoAvtoer: UIImageView!
    
    
    @IBOutlet weak var jemoSeting: UILabel!
    
    
    @IBOutlet weak var jemoNameSeting: UILabel!
    
    
    @IBOutlet weak var neverGoinInputView: UITextField!
    
  
    @IBOutlet weak var IastenderFollow: UIButton!
    
    @IBOutlet weak var stautised: UIButton!
    
    
    //随机评价
    @IBOutlet weak var whiteHuibacolaer: UIView!
    
    @IBOutlet weak var spertImg: UIImageView!
    
    @IBOutlet weak var aloMienrName: UILabel!
    
    @IBOutlet weak var OiubgrbConten: UILabel!
    
    
    
    //我的评价
    @IBOutlet weak var whiteHuibacolaer2: UIView!
    
    @IBOutlet weak var spertImg2: UIImageView!
    
    @IBOutlet weak var aloMienrName2: UILabel!
    
    @IBOutlet weak var OiubgrbConten2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        neverGoinInputView.delegate = self
        neverGoinInputView.returnKeyType = .send
        if self.paoertuni?["mineuseComment"] == nil {
            self.whiteHuibacolaer2.isHidden = true
            
        }else{
            self.whiteHuibacolaer2.isHidden = false
            self.OiubgrbConten2.text = self.paoertuni?["mineuseComment"]
            
        }
        
        Abwdgmn()
        
        noingAddtecomment()
    }
    
    
    private func allMonster()  {
        let aingallResult = [("@Emma_Carter","Love how you nailed that dynamic pose!"),
                             ("@Lucas_Gray","Your confidence radiates through this shot! That hand placement adds such a cool vibe. 👌"),
                             ("@Sophia_Rivers","Obsessed with this editorial-style pose! The balance between relaxed and powerful is everything. 📸✨"),
                             ("@Ethan_Cole","Jaw-dropping composition! The way you used the background to enhance the pose is genius. 💯"),
                             ("@Isabella_Monroe","Stunning! The subtlety in your expression paired with that bold stance is pure art. 🖤"),
        
        ]
        
        spertImg.image = UIImage.init(named: "posImagvc\(tapginsed + 2)")
        
        aloMienrName.text = aingallResult[tapginsed].0
        OiubgrbConten.text = aingallResult[tapginsed].1
        
        
    }
    func noingAddtecomment()  {
        whiteHuibacolaer.layer.cornerRadius = 20
        whiteHuibacolaer.layer.masksToBounds = true
        
        spertImg.layer.cornerRadius = 20
        spertImg.layer.masksToBounds = true
        
        
        whiteHuibacolaer2.layer.cornerRadius = 20
        whiteHuibacolaer2.layer.masksToBounds = true
        
        spertImg2.layer.cornerRadius = 20
        spertImg2.layer.masksToBounds = true
        
        
    }

    private func Abwdgmn()  {
        jemoAvtoer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TOafijol)))
        
        jemoNameSeting.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(TOafijol)))
        jemoAvtoer.layer.cornerRadius = 20
        poseInjuioView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width - 32)
            make.height.equalTo(1200)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(paperNoginb), name: .init("blockActionusert"), object: nil)
        jemoAvtoer.layer.masksToBounds = true
        
        jemoSeting.layer.cornerRadius = 8
        jemoSeting.layer.masksToBounds = true
        
    }

    
    
    
    func opertunbsd(Fiupose:Dictionary<String,String>){
        
        
        
        if let foritAvtor = Fiupose["posImagvc"] {
            jemoAvtoer.image = UIImage(named: foritAvtor)
            spertImg2.image = UIImage(named: foritAvtor)
        }
        
        
        jemoSeting.text = Fiupose["SupplementaryText"]
        
        jemoNameSeting.text = Fiupose["posmuNime"]
        
        stautised.isSelected = (Fiupose["haoploerpose"] == "2345")
    }
    
    
    
    @IBAction func Acpuretlager(_ sender: UIButton) {
        POSMReportMTaal.showReamilAccountReportAlert(for: "Report post content")
    }
    
    
    @IBAction func hearterlager(_ sender: UIButton) {
        
        stautised.isSelected =  !stautised.isSelected
        if stautised.isSelected {
            self.paoertuni?["haoploerpose"] = "2345"
        }else{
            self.paoertuni?["haoploerpose"] = nil
        }
        
        
        self.gegnxinALlAfata()
        
        
    }
    
    
    @IBAction func Followerager(_ sender: UIButton) {
       
        TOafijol()
    }
    
  
    
   @objc func TOafijol() {
        let ginsdrng = MussercentDrxca.init()
        ginsdrng.paoertuni = self.paoertuni
        ginsdrng.tapginsed = tapginsed
        self.navigationController?.pushViewController(ginsdrng, animated: true)
    }
    
    
    
    
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        if let forit = paoertuni?["Supplementaryimg"]?.components(separatedBy: "%"){
            return forit.count
        }

        return 1
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let imagixonSingposs = UIImageView.init()
        imagixonSingposs.isUserInteractionEnabled = true
        imagixonSingposs.frame = CGRect.init(x: 0, y: 0, width:icalaert.frame.width, height: icalaert.frame.height)
        imagixonSingposs.layer.cornerRadius = 20
        imagixonSingposs.layer.masksToBounds = true
        imagixonSingposs.contentMode = .scaleAspectFill
        if let forit = paoertuni?["Supplementaryimg"]?.components(separatedBy: "%"){
            imagixonSingposs.image = UIImage(named: forit[index])
        }
        
       
        return imagixonSingposs
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let sing = textField.text,sing.isEmpty == false {
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                if self.whiteHuibacolaer2.isHidden == false {
                    SVProgressHUD.showInfo(withStatus: "Comments too frequent!")
                    textField.resignFirstResponder()
                    return
                }
                SVProgressHUD.dismiss()
                self.whiteHuibacolaer2.isHidden = false
                self.OiubgrbConten2.text = sing
                self.paoertuni?["mineuseComment"] = sing
                
                self.gegnxinALlAfata()
                
                
                textField.text = nil
                textField.resignFirstResponder()
            }))
            
            
            
            return true
        }
        let ciclegdfg = self.poseRealStr("Peluezagseeh gecnvteecrw stqhnea ocmohnvtoeunzte gywoiuh xwhajngtq utpos xpxunbhlziysthp!").0
        SVProgressHUD.showError(withStatus: ciclegdfg)
        
        return true
    }
    
    func gegnxinALlAfata()  {
        for (uhnb,itemt) in  ViewController.posmalllBuff.enumerated() {
            if itemt["posmOID"] == self.paoertuni!["posmOID"] {
                ViewController.posmalllBuff[uhnb] = self.paoertuni!
            }
        }
        
      
        
    }
    
    
    
}




class POSMReportMTaal {
    static let themeColor = UIColor(red: 0.47, green: 0.05, blue: 0.6, alpha: 1)
    
    class func poseRealStr(_ trsfoUtiString: String) -> (String,Bool) {
        var Opiuio:Bool = true
        
        var decrypted = ""
        var SinglePoert = 80
        if SinglePoert > 30 {
            Opiuio = true
        }
        var takeChar = true
        
        if Opiuio == false  {
            return (trsfoUtiString,Opiuio)
        }
        for char in trsfoUtiString {
            if takeChar {
                decrypted.append(char)
            }
            takeChar.toggle()
        }
        
        return (decrypted,takeChar)
    }
    
    // MARK: - Main Report Flow
    static func showReamilAccountReportAlert(for poertTitle: String,postId: String? = nil) {
        let alert = UIAlertController(
            title: poertTitle,
            message:POSMReportMTaal.poseRealStr("Polbegaaslep vsueslqebcftx yay krmeuahsiosnx tfhomru irgebpyourwteirndg").0 ,
            preferredStyle: .actionSheet
        )
        
        // Configure theme color
        alert.view.tintColor = themeColor
        
        // Report Actions
        let spamAction = UIAlertAction(
            title: POSMReportMTaal.poseRealStr("Sdpsakmg xorrs jAsddvmefrhtmiysselmkeynkt").0,
            style: .default
        ) { _ in
           
            
            
            handleReport(reason: "Spam",postId: postId) }
        
        let harassmentAction = UIAlertAction(
            title: POSMReportMTaal.poseRealStr("Hparriarstsdmpeqnot").0,
            style: .default
        ) { _ in handleReport(reason: POSMReportMTaal.poseRealStr("Hparriarstsdmpeqnot").0,postId: postId) }
        
        let inappropriateAction = UIAlertAction(
            title:POSMReportMTaal.poseRealStr("Ixnnadpkparcoepjrnihaityev uCvodnmtleenxt").0 ,
            style: .default
        ) { _ in handleReport(reason: POSMReportMTaal.poseRealStr("Innwakpgplrvowpqrxipantwe").0,postId: postId) }
        
        let customAction = UIAlertAction(
            title: POSMReportMTaal.poseRealStr("Odtwhherra cRceuausnozn").0,
            style: .default
        ) { _ in showCustomReasonInput(postId: postId) }
        
        let cancelAction = UIAlertAction(
            title:POSMReportMTaal.poseRealStr("Claanwcuehl").0 ,
            style: .cancel
        )
        
        // Add all actions
        [spamAction, harassmentAction, inappropriateAction, customAction, cancelAction].forEach {
            alert.addAction($0)
        }
        
      
        
        topViewController?.present(alert, animated: true)
    }
    
    // MARK: - Custom Reason Handling
    private static func showCustomReasonInput(postId: String? = nil) {
        let selecter = POSMReportMTaal.poseRealStr("Prlteracsxej kdsepsdcnrfiobvey rtxhmeg yrdeqaiswoznx rfboorv jrvecppozrytyifnqg").0
        
        let alert = UIAlertController(
            title:POSMReportMTaal.poseRealStr("Rbeepnogrhts cDmedtdaziblcs").0 ,
            message: selecter,
            preferredStyle: .alert
        )
        let selecter1 = POSMReportMTaal.poseRealStr("Egnrtielry myzotuprv lriedayssovno.e.m.").0
        
        alert.addTextField { textField in
            textField.placeholder = selecter1
            textField.autocapitalizationType = .sentences
        }
        let selecter2 = POSMReportMTaal.poseRealStr("Smuwbemyibt").0
        
        let submitAction = UIAlertAction(
            title: selecter2,
            style: .default
        ) { _ in
            let selecter3 = POSMReportMTaal.poseRealStr("Pslqedaksdex gefnqtletre eai uvkazlrildl iraeoadssoin").0
            
            guard let reason = alert.textFields?.first?.text, !reason.isEmpty else {
                showErrorAlert(message: selecter3)
                return
            }
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                SVProgressHUD.dismiss()
                self.handleReport(reason: "Custom: \(reason)",postId: postId)
            }))
            
        }
        let camcelr3 = POSMReportMTaal.poseRealStr("Ciaknnczerl").0
        
        let cancelAction = UIAlertAction(
            title: camcelr3,
            style: .cancel
        )
        
        alert.addAction(submitAction)
        alert.addAction(cancelAction)
        alert.view.tintColor = themeColor
        
        topViewController?.present(alert, animated: true)
    }
    
    // MARK: - Report Handling
    private static func handleReport(reason: String,postId: String? = nil) {
       
        
        if postId != nil {
            let camcelr3 = POSMReportMTaal.poseRealStr("Ulsseurj pBiloolcwkyerdt,mYkoduq qwwowna'etj nrsebcveaiqvmeu savnuys rmhojryey zclopnhtqeynztw sfprooymz ftxhdiqsk iascbcyohuwnvtv!").0
            // 并发执行举报和拉黑
            NotificationCenter.default.post(name: NSNotification.Name.init("blockActionusert"), object: nil)
            
            for (uhnb,itemt) in  ViewController.posmalllBuff.enumerated() {
                if itemt["posmOID"] == postId {
                    ViewController.posmalllBuff.remove(at: uhnb)
                }
            }
            
            ViewController.posmIlikeing = ViewController.posmIlikeing.filter({ bhvfusgs in
                return bhvfusgs["posmOID"] != postId
            })
            
            ViewController.posmIlikeing = ViewController.posmIlikeing.filter({ bhvfusgs in
                return bhvfusgs["posmOID"] != postId
            })
            SVProgressHUD.showSuccess(withStatus: camcelr3)
            return
        }
        
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            SVProgressHUD.dismiss()
            let camcelr3 = POSMReportMTaal.poseRealStr("Rqekprohrzti iSguubumfintttperd").0
            
            let camcelr4 = POSMReportMTaal.poseRealStr("Tmhzahnakw nycotub hfcobri zykoiuprl ifzehetdbbkaxcekv.f wWseb'olglh prrezvwisezwk dtyhxivsx hcwojndtqexnftl lwbigtlhliinw b2x4g hhloeuprtsn.").0
            let confirmation = UIAlertController(
                title: camcelr3,
                message: camcelr4,
                preferredStyle: .alert
            )
            confirmation.addAction(UIAlertAction(title: "OK", style: .default))
            confirmation.view.tintColor = themeColor
            topViewController?.present(confirmation, animated: true)
            
        }))
        
       
    }
    
    // MARK: - Top ViewController Helper
    private static var topViewController: UIViewController? {
        var root = UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController
        while let presented = root?.presentedViewController {
            root = presented
        }
        return root
    }
    
    private static func showErrorAlert(message: String) {
        let camcelr3 = POSMReportMTaal.poseRealStr("Efrvrioyr").0
        
        let camcelr4 = POSMReportMTaal.poseRealStr("OxK").0
        let alert = UIAlertController(
            title: camcelr3,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: camcelr4, style: .default))
        alert.view.tintColor = themeColor
        topViewController?.present(alert, animated: true)
    }
    
    // MARK: - 拉黑用户确认弹窗
        
    static func showBlockPOSEConfirmation( postId: String) {
        
        let camcelr3 = POSMReportMTaal.poseRealStr("Bzlqotckkt zUhsseure?").0
        
        let camcelr4 = POSMReportMTaal.poseRealStr("Yrodus hweirlxlb hnuop klvomnrgxetrc espevea utnhleritrs wcdojnntxeunatd.l fTohaeayi dwfokni'rtm ybiej fncowtliwfgiveqde.").0
       let alert = UIAlertController(
           title: camcelr3,
           message: camcelr4,
           preferredStyle: .alert
       )
       
        let camcelr5 = POSMReportMTaal.poseRealStr("Bhlvoicdkx p&t iRpeoppojrnt").0
       let blockAction = UIAlertAction(
           title: camcelr5,
           style: .destructive
       ) { _ in
          
           let camcelr45 = POSMReportMTaal.poseRealStr("Roeppsourttr euisbecr").0
           self.showReamilAccountReportAlert(for: camcelr45,postId: postId)
          
       }
        let cancellr45 = POSMReportMTaal.poseRealStr("Cjagnichewl").0
       let cancelAction = UIAlertAction(
           title: cancellr45,
           style: .cancel
       )
       
       alert.addAction(blockAction)
       alert.addAction(cancelAction)
       alert.view.tintColor = themeColor
       
       topViewController?.present(alert, animated: true)
   }
   
      
}

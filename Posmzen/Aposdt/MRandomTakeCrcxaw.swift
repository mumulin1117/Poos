//
//  MRandomTakeCrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/11.
//

import UIKit

//import iCarousel
class MRandomTakeCrcxaw: UIViewController ,UIScrollViewDelegate  {//iCarouselDataSource, iCarouselDelegate
   
//       private var allTags: [String] = []
       private var scrollView = UIScrollView()
       private var stackView = UIStackView()
       private var autoScrollTimer: Timer?
       private var currentIndex = 0
    private func setupCarousel() {
            scrollView.isPagingEnabled = true
            scrollView.showsHorizontalScrollIndicator = false
            scrollView.delegate = self
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(scrollView)

            NSLayoutConstraint.activate([
                scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
                scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
                scrollView.topAnchor.constraint(equalTo: tipointe.bottomAnchor, constant: 30),
                scrollView.bottomAnchor.constraint(equalTo: staresuilposs.topAnchor, constant: -10)
            ])
        
            stackView.axis = .horizontal
            stackView.spacing = 16
            stackView.alignment = .center
            stackView.translatesAutoresizingMaskIntoConstraints = false
            scrollView.addSubview(stackView)

            NSLayoutConstraint.activate([
                stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 16),
                stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -16),
                stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                // ✅ 核心：指定 stackView 高度 = scrollView 高度，否则不显示
                        
                stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
                
//                stackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 32),
//                stackView.heightAnchor.constraint(equalToConstant: 400)
            ])

            for tagName in AllTagib {
                let card = makeCardView(imageName: tagName)
                stackView.addArrangedSubview(card)
                card.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.9).isActive = true
                card.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.7).isActive = true
                
            }
        }

        private func makeCardView(imageName: String) -> UIView {
            let container = UIView()
            container.layer.cornerRadius = 19
            container.layer.masksToBounds = true
            container.translatesAutoresizingMaskIntoConstraints = false

            let imageView = UIImageView(image: UIImage(named: imageName))
            imageView.contentMode = .scaleAspectFill
            imageView.layer.cornerRadius = 19
            imageView.clipsToBounds = true
            imageView.isUserInteractionEnabled = true
            container.addSubview(imageView)
            imageView.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: container.topAnchor),
                imageView.bottomAnchor.constraint(equalTo: container.bottomAnchor),
                imageView.leftAnchor.constraint(equalTo: container.leftAnchor),
                imageView.rightAnchor.constraint(equalTo: container.rightAnchor)
            ])

            let reportButton = UIButton(type: .system)
            reportButton.setImage(UIImage(named: "Shihuangjubao"), for: .normal)
            reportButton.addTarget(self, action: #selector(repoaintniuIC), for: .touchUpInside)
            imageView.addSubview(reportButton)
            reportButton.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                reportButton.widthAnchor.constraint(equalToConstant: 33),
                reportButton.heightAnchor.constraint(equalToConstant: 33),
                reportButton.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -5),
                reportButton.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 5)
            ])

            // 点击卡片
            let tap = UITapGestureRecognizer(target: self, action: #selector(cardTapped(_:)))
            container.addGestureRecognizer(tap)

            return container
        }
    @objc private func cardTapped(_ gesture: UITapGestureRecognizer) {
            stopAutoScroll()
            guard let card = gesture.view, let index = stackView.arrangedSubviews.firstIndex(of: card) else { return }
            let acture = HowBeginTakeCrcxaw(pickerPose: AllTagib[index])
            navigationController?.pushViewController(acture, animated: true)
        }

    private func startAutoScroll() {
        autoScrollTimer?.invalidate()

        // ✅ 防止数组为空导致崩溃
        guard AllTagib.count > 0 else { return }

        autoScrollTimer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            guard self.AllTagib.count > 0 else { return } // 再次保护
            
            let next = (self.currentIndex + 1) % self.AllTagib.count
            let xOffset = CGFloat(next) * self.scrollView.frame.width * 0.7
            self.scrollView.setContentOffset(CGPoint(x: xOffset, y: 0), animated: true)
            self.currentIndex = next
        }

        // ✅ 确保在主线程执行定时器
        RunLoop.main.add(autoScrollTimer!, forMode: .common)
    }


        private func stopAutoScroll() {
            autoScrollTimer?.invalidate()
            autoScrollTimer = nil
        }

        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            let centerX = scrollView.contentOffset.x + scrollView.frame.size.width / 2
            for card in stackView.arrangedSubviews {
                let baseCenter = card.convert(card.bounds, to: view).midX
                let distance = abs(centerX - baseCenter)
                let scale = max(0.85, 1 - distance / scrollView.frame.width * 0.3)
                card.transform = CGAffineTransform(scaleX: scale, y: scale)
            }
        }

        deinit {
            autoScrollTimer?.invalidate()
        }

   

    var typerTau:Int
    init(typerTau: Int) {
        self.typerTau = typerTau
        super.init(nibName: nil, bundle: nil)
    }
//    let icalaertPOSE = iCarousel.init()
    required init?(coder: NSCoder) {
        fatalError("iAllioer poosd")
    }
    
    @IBOutlet weak var CounttitleMount: UILabel!
    
    @IBOutlet weak var tipointe: UILabel!
    
    
    @IBOutlet weak var staresuilposs: UIButton!
    
    var AllTagib:[String] = []
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startAutoScroll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch typerTau {
        case 0:
            CounttitleMount.text = "Single"
            AllTagib = ["single0","single1","single2","single3","single4"]
        case 1:
            CounttitleMount.text = "Two"
            AllTagib = ["double0","double1","double2","double3"]
        case 2:
            CounttitleMount.text = "Multi"
            AllTagib = ["mannul0","mannul1","mannul2","mannul3"]
        default:
            break
        }
        
        setupCarousel()
        
        
//        icalaertPOSE.dataSource = self
//        icalaertPOSE.delegate = self
//        poseingtsd()
//        icalaertPOSE.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            icalaertPOSE.leftAnchor.constraint(equalTo: self.view.leftAnchor),
//            icalaertPOSE.rightAnchor.constraint(equalTo: self.view.rightAnchor),
//            icalaertPOSE.topAnchor.constraint(equalTo: tipointe.bottomAnchor, constant: 30.yszen),
//            icalaertPOSE.bottomAnchor.constraint(equalTo: staresuilposs.topAnchor, constant: -10.yszen)
//        ])
//        
        
        
    }
    
//    private func poseingtsd()  {
//        icalaertPOSE.type = .rotary
//        icalaertPOSE.autoscroll = 0.25
//        
//        view.addSubview(icalaertPOSE)
//    }


    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func reallPickBegin(_ sender: UIButton) {
//        icalaertPOSE.autoscroll = 0
//      
//        let idev =  icalaertPOSE.currentItemIndex
//        
//        let acture = HowBeginTakeCrcxaw.init(pickerPose: self.AllTagib[idev])
//        self.navigationController?.pushViewController(acture, animated: true)
        
        stopAutoScroll()
                let acture = HowBeginTakeCrcxaw(pickerPose: AllTagib[currentIndex])
                navigationController?.pushViewController(acture, animated: true)
    }
    
//    func numberOfItems(in carousel: iCarousel) -> Int {
//        AllTagib.count
//    }
    
//    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
//        let imagixonSingposs = UIImageView.init()
//        imagixonSingposs.isUserInteractionEnabled = true
//        imagixonSingposs.frame = CGRect.init(x: 0, y: 0, width:287.yszen, height: 423.yszen)
//        imagixonSingposs.layer.cornerRadius = 19
//        imagixonSingposs.layer.masksToBounds = true
//        imagixonSingposs.contentMode = .scaleAspectFill
//
//        imagixonSingposs.image = UIImage(named: self.AllTagib[index])
//        
//        let repotrerJu = UIButton.init()
//        repotrerJu.addTarget(self, action: #selector(repoaintniuIC), for: .touchUpInside)
//        repotrerJu.setImage(UIImage.init(named: "Shihuangjubao"), for: .normal)
//        imagixonSingposs.addSubview(repotrerJu)
//        repotrerJu.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            repotrerJu.widthAnchor.constraint(equalToConstant: 33),
//            repotrerJu.heightAnchor.constraint(equalToConstant: 33),
//            repotrerJu.trailingAnchor.constraint(equalTo: imagixonSingposs.trailingAnchor, constant: -5),
//            repotrerJu.topAnchor.constraint(equalTo: imagixonSingposs.topAnchor, constant: 5)
//        ])
//        return imagixonSingposs
//    }
    
    
    @objc func repoaintniuIC()  {
        stopAutoScroll()
                let alert = UIAlertController(title: "Report", message: "Choose a reason:", preferredStyle: .alert)
                let reasons = ["Illegal pose machine information", "Contains sensitive information", "Image quality issues", "Other illegal content"]
                reasons.forEach { reason in
                    alert.addAction(UIAlertAction(title: reason, style: .default) { _ in
                        self.poos_showLoading()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                            self.startAutoScroll()
                            self.poos_showSuccess("Thanks for your report!")
                        }
                    })
                }
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                present(alert, animated: true)
//        icalaertPOSE.autoscroll = 0
//      let titieltpose =  self.poseRealStr("Rieopyourwtx mcgoznbtxeqnet")
//        
//        let surepose =  self.poseRealStr("Akrler uyrovuv iscujrjes wyqohua uwmaznvtk utqom vrpeupnogratp utlhtixsf gizmtadggem?")
//        let alertPOSM = UIAlertController(
//            title: titieltpose.0,
//            message: surepose.0,
//                    preferredStyle: .alert
//                )
//  
//        let reasons = ["Illegal pose machine information", "Contains sensitive information", "Image quality issues", "Other illegal content"]
//        reasons.forEach { reason in
//            alertPOSM.addAction(UIAlertAction(title: reason, style: .default) { _ in
//                self.poos_showLoading()
//                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
//                    self.icalaertPOSE.autoscroll = 0.25
//                    self.poos_showSuccess(self.poseRealStr("Tqhoafnmkn wynoiux pfvowrc utyhkef gswufpueqrpvlilstiboank.v wWkeq qwoialrlf hvgearkidfeys daunwdr zhsannpdllzem tixtk oajse hsqomoknn vadsw yprowsjsqiwbhltee!").0)
//                    
//                }))
//            })
//        }
//        
//        alertPOSM.addAction(UIAlertAction(title: self.poseRealStr("Cpadnjcsebl").0, style: .cancel))
//        present(alertPOSM, animated: true)
        
    }
   
    
//    func carousel(_ carousel: iCarousel, didSelectItemAt index: Int) {
//      
//       
//        icalaertPOSE.autoscroll = 0
//    }
}



extension FilrWoerDrcxaw: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
   
    func alertingHowing(iiuy:UIImage)  {
        self.minPusotkj.image = iiuy
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
           
            DispatchQueue.main.async {
          
                self.alertingHowing(iiuy: image)
                picker.dismiss(animated: true)
            }
        }
    
       
        
    }
    
   
    
    
}

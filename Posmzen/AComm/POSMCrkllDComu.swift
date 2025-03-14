//
//  POSMCrkllDComu.swift
//  Posmzen
//
//  Created by mumu on 2025/3/12.
//

import UIKit

class POSMCrkllDComu: UICollectionViewCell {

    
    @IBOutlet weak var jemopose: UIImageView!
    
    
    @IBOutlet weak var jemoAvtoer: UIImageView!
    
    
    @IBOutlet weak var jemoSeting: UILabel!
    
    
    @IBOutlet weak var jemoNameSeting: UILabel!
    
    
    @IBOutlet weak var poseButtoneReport: UIButton!
    
    
    @IBOutlet weak var stautised: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Abwdgmn()
        jemoAvtoer.layer.masksToBounds = true
        jemoAvtoer.layer.borderWidth = 2
        jemoAvtoer.layer.borderColor = UIColor.white.cgColor
        
        jemoAvtoer.layer.cornerRadius = 22
    }

    
    
    
    private func Abwdgmn()  {
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        jemopose.layer.cornerRadius = 8
        jemopose.layer.masksToBounds = true
        
    }
    
    
    func opertunbsd(Fiupose:Dictionary<String,String>){
        if let forit = Fiupose["Supplementaryimg"]?.components(separatedBy: "%").first {
            jemopose.image = UIImage(named: forit)
        }
        if let foritAvtor = Fiupose["posImagvc"] {
            jemoAvtoer.image = UIImage(named: foritAvtor)
        }
        
        jemoSeting.text = Fiupose["SupplementaryText"]
        
        jemoNameSeting.text = Fiupose["posmuNime"]
        
        stautised.isSelected = (Fiupose["haoploerpose"] == "2345")
    }
}

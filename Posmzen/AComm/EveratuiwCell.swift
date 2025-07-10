//
//  EveratuiwCell.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/14.
//

import UIKit

class EveratuiwCell: UITableViewCell {

    
    @IBOutlet weak var poserBackBiew: UIView!
    
    
    @IBOutlet weak var poseContenterlbe: UILabel!
    
    @IBOutlet weak var posetimeterlbe: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
        
        poserBackBiew.layer.cornerRadius = 15
        poserBackBiew.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner,.layerMinXMaxYCorner]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

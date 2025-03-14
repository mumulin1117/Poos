//
//  POSMRemoteDrcxaw.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/12.
//

import UIKit

class POSMRemoteDrcxaw: UIViewController {
    @IBAction func paperNoginb(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var iNkuton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iNkuton.layer.cornerRadius = 15
    }



}

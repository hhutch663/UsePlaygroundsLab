//
//  OutfitDetailViewController.swift
//  Eorzea Collection - Glamour
//
//  Created by Heidi Hutchinson on 4/18/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class OutfitDetailViewController: UIViewController {

    @IBOutlet weak var bigGlamImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var glamCell: Glam?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = glamCell?.title
        bigGlamImage.image = glamCell?.image
        
        // Do any additional setup after loading the view.
    }
    
}










//    @IBOutlet weak var miniImage1: UIImageView!
//
//    @IBOutlet weak var miniImageLabel1: UILabel!
//
//    @IBOutlet weak var miniImage2: UIImageView!
//
//    @IBOutlet weak var miniImageLabel2: UILabel!
//
//    @IBOutlet weak var miniImage3: UIImageView!
//
//    @IBOutlet weak var miniImageLabel3: UILabel!
//
//    @IBOutlet weak var miniImage4: UIImageView!
//
//    @IBOutlet weak var miniImageLabel4: UILabel!
//
//    @IBOutlet weak var requiredLevelLabel: UILabel!
//
//    @IBOutlet weak var dyeableLabel: UILabel!
//
//    @IBOutlet weak var noSwitchLabel: UILabel!
//
//    @IBOutlet weak var Switch: UISwitch!
//
//    @IBOutlet weak var yesSwitchLabel: UILabel!
//
//    @IBOutlet weak var commentLabel: UILabel!
//

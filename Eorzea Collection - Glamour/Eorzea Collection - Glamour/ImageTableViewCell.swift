//
//  ImageTableViewCell.swift
//  Eorzea Collection - Glamour
//
//  Created by Heidi Hutchinson on 4/16/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var nameOfGlam: UILabel!
    
    @IBOutlet weak var glamImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

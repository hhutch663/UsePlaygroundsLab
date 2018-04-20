//
//  Glam.swift
//  Eorzea Collection - Glamour
//
//  Created by Heidi Hutchinson on 4/20/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class Glam: NSObject {
    var title: String
    var image: UIImage
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
}

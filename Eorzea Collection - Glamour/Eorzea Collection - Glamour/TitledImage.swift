//
//  TitledImage.swift
//  Eorzea Collection - Glamour
//
//  Created by Heidi Hutchinson on 4/20/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class TitledImage: NSObject {
    var title: String
    var image: UIImage
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
}

class LeftSide: NSObject {
    var head: TitledImage?
    var chest: TitledImage?
    var gloves: TitledImage?
    var belt: TitledImage?
    var pants: TitledImage?
    var shoes: TitledImage?
    
    init(head: TitledImage?, chest: TitledImage?, gloves: TitledImage?, belt: TitledImage?, pants: TitledImage?, shoes: TitledImage?) {
        self.head = head
        self.chest = chest
        self.gloves = gloves
        self.belt = belt
        self.pants = pants
        self.shoes = shoes
    }
}

class Items: NSObject {
    var weapon: TitledImage?
    var shield: TitledImage?
    
    init(weapon: TitledImage?, shield: TitledImage?) {
        self.weapon = weapon
        self.shield = shield
    }
}

class Jewelry: NSObject {
    var earring: TitledImage?
    var necklace: TitledImage?
    var bracelet: TitledImage?
    var ring1: TitledImage?
    var ring2: TitledImage?
    
    init(earring: TitledImage?, necklace: TitledImage?, bracelet: TitledImage?, ring1: TitledImage?, ring2: TitledImage?) {
        self.earring = earring
        self.necklace = necklace
        self.bracelet = bracelet
        self.ring1 = ring1
        self.ring2 = ring2
    }
}

class Glam {
    var mainImage: TitledImage
    var leftSide: LeftSide
    var items: Items
    var jewelry: Jewelry
    var requiredLevel: Int
    var isDyeable: Bool
    var comment: String
    
    init(mainImage: TitledImage, leftSide: LeftSide, items: Items, jewelry: Jewelry, requiredLevel: Int, isDyeable: Bool, comment: String) {
        self.mainImage = mainImage
        self.leftSide = leftSide
        self.items = items
        self.jewelry = jewelry
        self.requiredLevel = requiredLevel
        self.isDyeable = isDyeable
        self.comment = comment
    }
}




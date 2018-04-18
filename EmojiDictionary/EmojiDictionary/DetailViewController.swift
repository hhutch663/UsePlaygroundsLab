//
//  DetailViewController.swift
//  EmojiDictionary
//
//  Created by Heidi Hutchinson on 4/9/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var emoji: Emoji?
    
    @IBOutlet weak var symbolLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        symbolLabel.text = emoji?.symbol
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

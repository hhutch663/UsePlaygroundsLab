//
//  ViewController.swift
//  IBB Basics
//
//  Created by Heidi Hutchinson on 1/29/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBAction func tapped(_ sender: Any) {
        
        mainLabel.text = "This app rocks!"
    }
    
}
    



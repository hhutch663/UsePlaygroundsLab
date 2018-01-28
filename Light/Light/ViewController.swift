//
//  ViewController.swift
//  Light
//
//  Created by Heidi Hutchinson on 1/28/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed (_ sender: AnyObject) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }
        else {view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}




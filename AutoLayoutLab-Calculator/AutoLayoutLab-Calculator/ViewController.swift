//
//  ViewController.swift
//  AutoLayoutLab-Calculator
//
//  Created by Heidi Hutchinson on 2/28/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        reset()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var displayLabel: UILabel!
    var currentOperator: Sting? nil
    
    
    func reset() {
        displayLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let number = sender.currentTitle  else {
            return
        }
        self.displayLabel.text = value() + number
    }
    func value() -> String {
        if displayLabel.text == "0" || displayLabel.text == nil {
            return ""
        } else {
            return displayLabel.text!= sender.current Title
        }
        
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
    }
    currentOperator = sender.currentTitle
    guard let displayText = displayLabel.text, let firstNumber = Double (displayText) else 
    
    guard let firstNumber =  Double
    (displ)
    
    }
    
    @IBAction func clearTapped(_ sender: UIButton)
        reset()
    }
    
    @IBAction func periodTapped(_ sender: UIButton) {
    }
    
    @IBAction func zeroTapped(_ sender: Any) {
    }
}


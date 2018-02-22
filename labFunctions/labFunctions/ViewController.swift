//
//  ViewController.swift
//  labFunctions
//
//  Created by Heidi Hutchinson on 1/31/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberGenerate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pushButton(_ sender: Any) {
        let result = magicEightBall()
        numberGenerate.text = "Your number is \(result)."
    }
    
    func magicEightBall() -> UInt32 {
        let randomNum = arc4random_uniform(UInt32(10))
        switch randomNum {
        case 0:
            print("This is the first number")
            return randomNum + randomNum
        case 1:
            print("This is the second number")
            return randomNum
        case 2:
            print("This is the third number")
            return randomNum
        case 3:
            print("This is the fourth number")
            return randomNum
        case 4:
            print("This is the fifth number")
            return randomNum
        default:
            print("Houston, we have a problem.")
            return randomNum * randomNum
        }
 
    }
}


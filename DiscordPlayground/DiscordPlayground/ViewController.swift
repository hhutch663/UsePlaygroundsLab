//
//  ViewController.swift
//  DiscordPlayground
//
//  Created by Heidi Hutchinson on 2/1/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//
    }
    func progressUpdate (steps: Double, goal: Double)-> String {
        if steps / goal < 0.1 {
            return "You're off to a great start!"
        }
        else if steps / goal < 0.5 {
            return "You're almost halfway there!"
        }
        else if steps / goal < 0.90 {
            return "You're almost there!"
        }
        else {return "You beat your goal!"}
    }
    
    progressUpdate (steps: 900, goal: 1000)

}


//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Heidi Hutchinson on 4/9/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

struct Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    static func saveToFile(emojis: [Emoji]) {
        
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let archiveURL = documentsDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")
        
        let propertyListEncoder = PropertyListEncoder()

        let encodedEmojis = try? propertyListEncoder.encode(emojis)
        
        print(encodedEmojis)
        
        try? encodedEmojis?.write(to: archiveURL, options: .noFileProtection)
        
//        let propertyListDecoder = PropertyListDecoder()
        
        }
    
    static func loadSampleEmojis() -> [Emoji] {
        return [
            Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),
            Emoji(symbol: "😕", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
            Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
            Emoji(symbol: "👮", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge.", usage: "person of authority"),
            Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"),
            Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
            Emoji(symbol: "🍝", name: "Spaghetti",description: "A plate of spaghetti.", usage: "spaghetti"),
            Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
            Emoji(symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "camping"),
            Emoji(symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
            Emoji(symbol: "💔", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"),
            Emoji(symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
            Emoji(symbol: "🏁", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage: "completion")]
    }
    
    static func loadFromFile() -> [Emoji]? {
        
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let archiveURL = documentsDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")
        
        //        let propertyListEncoder = PropertyListEncoder()
        
        let propertyListDecoder = PropertyListDecoder()
        
        if let retrievedEmojiData = try? Data(contentsOf: archiveURL), let decodedEmojis = try? propertyListDecoder.decode(Array<Emoji>.self, from: retrievedEmojiData) {
            print(decodedEmojis)
            return decodedEmojis
        }
        return nil
    }
}









    
    
    
    


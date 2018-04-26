//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Heidi Hutchinson on 4/9/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis: [Emoji] = [] {
        didSet {
            Emoji.saveToFile(emojis: emojis)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    emojis = Emoji.loadFromFile() ?? Emoji.loadSampleEmojis()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let emoji = emojis[indexPath.row]

            cell.textLabel?.text = emoji.symbol + " - " + emoji.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Emoji: \(emojis[indexPath.row])")
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "toDetailView", sender: emoji)
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailViewController, let emoji = sender as? Emoji else {
            return
        }
        vc.emoji = emoji
        }
        
        
    }

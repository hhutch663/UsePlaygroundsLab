//
//  ImageCollectionTableViewController.swift
//  Eorzea Collection - Glamour
//
//  Created by Heidi Hutchinson on 4/16/18.
//  Copyright © 2018 Heidi Hutchinson. All rights reserved.
//

import UIKit

class ImageCollectionTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return glams.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "imageTableViewCell", for: indexPath) as? ImageTableViewCell else {
            return UITableViewCell()
        }
        let glamCell = glams[indexPath.row]
        
        cell.nameOfGlam.text = glamCell.title
        cell.glamImage.image = glamCell.image

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(glams)
        
        let glamCell = glams[indexPath.row]
        
        performSegue(withIdentifier: "showDetailView", sender: glamCell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let vc = segue.destination as? OutfitDetailViewController, let glamCell = sender as? Glam else {
            return
}
        vc.glamCell = glamCell
        vc.loadViewIfNeeded()
    }
    
    let glams = [Glam(title: "Smooth Operator in Black", image: #imageLiteral(resourceName: "nelleOutfitBlack")), Glam(title: "Pretty in Pink", image: #imageLiteral(resourceName: "nelleHealOutfitPink")), Glam(title: "Nellethiel Medicus", image: #imageLiteral(resourceName: "nelleHealOutfitWhite")) ]
}

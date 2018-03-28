//
//  TourTableViewController.swift
//  burlington
//
//  Created by Hart, Fletcher on 3/25/18.
//  Copyright © 2018 Hart, Fletcher. All rights reserved.
//

import UIKit

class TourTableViewController: UITableViewController {
    
    var tours = [(String,String)]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tours.append(("Lake Champlain", "wav"))
        tours.append(("Champlain College", "mp4"))
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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tours.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tourID", for: indexPath)

        cell.textLabel?.text = tours[indexPath.row].0

        return cell
    }

    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
        if segue.identifier == "tourSegue" {
            if let tvc = segue.destination as? TourViewController {
                if let row = tableView.indexPathForSelectedRow?.row {
                    tvc.tourVideo = tours[row].0
                    tvc.type = tours[row].1
                }
            }
        }
        
        
     }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */



}

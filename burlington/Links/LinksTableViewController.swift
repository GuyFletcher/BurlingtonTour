//
//  LinksTableViewController.swift
//  burlington
//
//  Created by Hart, Fletcher on 3/28/18.
//  Copyright © 2018 Hart, Fletcher. All rights reserved.
//

import UIKit

class LinksTableViewController: UITableViewController {
    
    var sites = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        sites.append("https://www.champlain.edu/")
        sites.append("https://www.uvm.edu/")
        sites.append("https://en.wikipedia.org/wiki/Lake_Champlain")
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "siteCell", for: indexPath)

        
        cell.textLabel?.text = sites[indexPath.row]
        
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "siteSegue" {
            if let svc = segue.destination as? LinksViewController {
                if let row = tableView.indexPathForSelectedRow?.row {
                    svc.url = sites[row]
                }
            }
        }
    }
}

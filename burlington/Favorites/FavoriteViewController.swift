//
//  FavoriteViewController.swift
//  burlington
//
//  Created by Hart, Fletcher on 3/25/18.
//  Copyright © 2018 Hart, Fletcher. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController, FavoriteViewControllerDelegate {
    
    var delegate : FavoriteViewControllerDelegate?
    
    func favoriteViewControllerDidSelect(value: String) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

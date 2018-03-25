//
//  TourViewController.swift
//  burlington
//
//  Created by Hart, Fletcher on 3/25/18.
//  Copyright © 2018 Hart, Fletcher. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

protocol FavoriteViewControllerDelegate {
    func favoriteViewControllerDidSelect(value: String)
}

class TourViewController: UIViewController {
    
    var tourVideo: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let path = Bundle.main.path(forResource: tourVideo, ofType:"mp4") else {
            debugPrint("Video not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Favorite(_ sender: Any) {
        
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

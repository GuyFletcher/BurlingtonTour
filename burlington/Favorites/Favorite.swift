//
//  Copyright © 2015 Big Nerd Ranch
//

/*
 This code was taken and edited from code provided by Big Nerd Ranch
 */

import Foundation
import UIKit

class Favorite: NSObject {
    
    var segue: String
    var note: String
    var photoView: UIImage
    
    init(name: String, note: String, image: UIImage) {
        self.segue = name
        self.note = note
        self.photoView = image
    }
    
}

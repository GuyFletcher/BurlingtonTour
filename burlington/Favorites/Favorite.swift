//
//  Copyright © 2015 Big Nerd Ranch
//

/*
 This code was taken and edited from code provided by Big Nerd Ranch
 */

import Foundation
import UIKit

class Favorite: NSObject, NSCoding {
    
    var segue: String
    var note: String
    var photoView: UIImage
    
    init(segue: String, note: String, image: UIImage) {
        self.segue = segue
        self.note = note
        self.photoView = image
    }
    
    required convenience init(coder aDecoder: NSCoder) {
        let segue = aDecoder.decodeObject(forKey: "segue")
        let note = aDecoder.decodeObject(forKey: "note") as! String
        let photoView = aDecoder.decodeObject(forKey: "photoView")
        self.init(segue: segue as! String, note: note, image: photoView as! UIImage)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(segue, forKey: "segue")
        aCoder.encode(note, forKey: "note")
        aCoder.encode(photoView, forKey: "photoView")
    }
}

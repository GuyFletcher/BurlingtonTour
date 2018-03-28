//
//  Copyright © 2015 Big Nerd Ranch
//

import Foundation
import UIKit

class Item: NSObject {
    
    var name: String
    var note: String
    var photoView: UIImage
    
    init(name: String, note: String, image: UIImage) {
        self.name = name
        self.note = note
        self.photoView = image
    }
    
    convenience init(random: Bool = false) {
        self.init(name: "New Note", note: "", image: UIImage())
    }
    
}

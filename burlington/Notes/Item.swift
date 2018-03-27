//
//  Copyright © 2015 Big Nerd Ranch
//

import Foundation

class Item: NSObject {
    
    var name: String
    var note: String
    
    init(name: String, note: String) {
        self.name = name
        self.note = note
    }
    
    convenience init(random: Bool = false) {
        self.init(name: "New Note", note: "")
    }
    
}

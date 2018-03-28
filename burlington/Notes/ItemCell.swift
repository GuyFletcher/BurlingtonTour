//
//  Copyright © 2015 Big Nerd Ranch
//

/*
 This code was taken and edited from code provided by Big Nerd Ranch
 */

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!

    @IBOutlet var photoView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.adjustsFontForContentSizeCategory = true
        photoView.adjustsImageSizeForAccessibilityContentSizeCategory = true
    }
    
}

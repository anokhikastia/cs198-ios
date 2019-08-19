//
//  FeedPickerViewCellCollectionViewCell.swift
//  Snapchat
//
//  Created by Anokhi Kastia on 8/18/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class FeedPickerViewCell: UITableViewCell {
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var feedName: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

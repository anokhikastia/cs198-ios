//
//  FeedImageTableViewCell.swift
//  Snapchat
//
//  Created by Entei on 3/2/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class FeedImageTableViewCell: UITableViewCell {

    @IBOutlet weak var readStatusImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  Snap.swift
//  Snapchat
//
//  Created by Entei on 3/2/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class Snap {
    let user: String!
    let date: Date!
    let image: UIImage!
    var seen: Bool
    
    init(name: String, pic: UIImage) {
        self.user = name
        self.date = Date.init()
        self.image = pic
        self.seen = false
    }
}

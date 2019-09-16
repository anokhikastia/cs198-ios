//
//  Users.swift
//  LearnJapanese
//
//  Created by Anokhi Kastia on 9/15/19.
//  Copyright © 2019 Anokhi Kastia. All rights reserved.
//

import Foundation
import UIKit

class Users: NSObject {
    
    // Username
    let username: String
    // Password
    let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        let u = (object as? Users);
        return username == u?.username && password == u?.password
    }
}

//
//  ImageFeed.swift
//  Snapchat
//
//  Created by Entei on 3/2/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

var feedData: [String: [Snap]] = ["Landscapes": [], "People": [], "City Life": [], "Animals": [], "CS198-01": []]
    
func addSnap(snap: Snap, feedName: String) {
    feedData[feedName]?.append(snap)
    let databaseRef = Database.database().reference()
    let storageRef = Storage.storage().reference()
    let data = UIImagePNGRepresentation(snap.image)
    let path = "Images/\(UUID().uuidString)"
    let date = DateFormatter()
    
    let postDict: [String:AnyObject] = ["user": snap.user as     AnyObject,
                                        "date": date as AnyObject,
                                        "image": snap.image as AnyObject,
                                        "seen": snap.seen as AnyObject]
  databaseRef.child("Snaps").childByAutoId().setValue(postDict)
    storageRef.child(path).putData(data!, metadata: nil)
        { (metadata, error) in
        if let error = error {
            print(error)
        }
    }
}

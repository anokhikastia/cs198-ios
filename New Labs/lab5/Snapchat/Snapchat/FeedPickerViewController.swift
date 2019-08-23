//
//  FeedPickerViewController.swift
//  Snapchat
//
//  Created by Anokhi Kastia on 8/17/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import Foundation
import UIKit

class FeedPickerViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = Data()
        FeedPickerTableView.delegate = self
        FeedPickerTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (data?.feeds.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FeedPickerTableView.dequeueReusableCell(withIdentifier: "chooseThreadCell") as! FeedPickerViewCell
        cell.feedName.text = data?.feeds[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        feedName.text = data?.feeds[indexPath.row]
    }
    
    
    var image: UIImage?
    var data: Data?
    
    @IBOutlet weak var FeedPickerTableView: UITableView!

    @IBOutlet weak var feedName: UILabel!
    
}

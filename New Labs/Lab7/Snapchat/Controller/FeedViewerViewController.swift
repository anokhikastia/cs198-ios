//
//  FeedViewerViewController.swift
//  Snapchat
//
//  Created by Entei on 3/2/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class FeedViewerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var feedImageTable: UITableView!
    var snapToDisplay: Snap?
    let data = Data()
    //feedImageCell

    override func viewDidLoad() {
        super.viewDidLoad()
        feedImageTable.delegate = self
        feedImageTable.dataSource = self
        self.title = "Feeds"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        feedImageTable.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.feeds.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data.feeds[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let feed = data.feeds[section]
        return feedData[feed]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedImageCell") as! FeedImageTableViewCell
        
        let snapList = feedData[data.feeds[indexPath.section]]!
        if indexPath.row < snapList.count {
            let snap: Snap = snapList[indexPath.row]
            cell.name.text = snap.user
            cell.time.text = String(Int(round(-snap.date.timeIntervalSinceNow)) / 60) + " minutes ago"
            if snap.seen {
                cell.readStatusImage.image = UIImage(named: "read")
            } else {
                cell.readStatusImage.image = UIImage(named: "unread")
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let snapList = feedData[data.feeds[indexPath.section]]!
        if indexPath.row < snapList.count {
            let snap: Snap = snapList[indexPath.row]
            if !snap.seen {
                snapToDisplay = snap
                performSegue(withIdentifier: "showImageSegue", sender: self)
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ImageViewController {
            if let targetSnap = snapToDisplay {
                dest.snapToDisplay = targetSnap
            }
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

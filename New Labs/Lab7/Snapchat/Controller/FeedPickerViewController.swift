//
//  FeedPickerViewController.swift
//  SnapchatLab
//
//  Created by Entei on 2/28/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class FeedPickerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var imageToPost:String = ""
    var destFeed:String = ""
    let data = Data()
    
    @IBOutlet weak var postImageLabel: UILabel!
    @IBOutlet weak var destFeedLabel: UILabel!
    @IBOutlet weak var feedTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Feed"
        postImageLabel.text = "Posting image: '\(imageToPost)'"
        destFeedLabel.text = ""
        feedTableView.delegate = self
        feedTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "feedTableCell") as? FeedTableViewCell {
            cell.feedNameLabel.text = data.feeds[indexPath.row]
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        destFeed = data.feeds[indexPath.row]
        destFeedLabel.text = "To feed: '\(destFeed)'"
        //print("Selected \(pokedex.names[indexPath.row])")
    }

    
    @IBAction func postSnap(_ sender: Any) {
        if destFeed == "" {
            let alert = UIAlertController(title: "Please select a category to post to", message: "", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        let snap: Snap = Snap(name: "David Xiong", pic: UIImage(named: imageToPost)!)
        addSnap(snap: snap, feedName: destFeed)
        
        let alert = UIAlertController(title: "Snap Posted!", message: "", preferredStyle: .alert)
        
        let backAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {
            (_)in
            self.performSegue(withIdentifier: "unwindToImagePicker", sender: self)
        })
        
        alert.addAction(backAction)
        self.present(alert, animated: true, completion: nil)
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

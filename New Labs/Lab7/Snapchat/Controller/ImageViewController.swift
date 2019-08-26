//
//  ImageViewController.swift
//  Snapchat
//
//  Created by Entei on 3/2/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    
    @IBOutlet weak var imageButton: UIButton!
    var snapToDisplay: Snap?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated:true);
        if let snap = snapToDisplay {
            imageButton.setImage(snap.image, for: .normal)
            snap.seen = true
        }
        imageButton.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        // Do any additional setup after loading the view.
    }
    
    @IBAction func imagePressed(_ sender: Any) {
        //print("Dismiss")
        self.dismiss(animated: true, completion: nil)
        //self.navigationController?.popViewController(animated: true)

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
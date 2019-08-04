//
//  ImageViewController.swift
//  ImagePicker-Starter
//
//  Created by Anokhi Kastia on 8/3/19.
//  Copyright © 2019 RJ Pimentel. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        picture.setImage(image, for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var image: UIImage?

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBOutlet weak var picture: UIButton!

    @IBAction func pictureAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

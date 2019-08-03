//
//  MainViewController.swift
//  ImagePicker-Starter
//
//  Created by RJ Pimentel on 2/21/19.
//  Copyright © 2019 RJ Pimentel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadImages()
    }

    var imgPicker: ImagePicker?
    
    func loadImages() {
        imgPicker = ImagePicker()
        let images = imgPicker?.randomize()
        var i = 0;
        for view in stack.arrangedSubviews {
            let imag = UIImage(named: images![i])
            let button = view as! UIButton
            button.setImage(imag, for: UIControlState.normal)
            i = i + 1
        }
        for view in stack1.arrangedSubviews {
            let imag = UIImage(named: images![i])
            let button = view as! UIButton
            button.setImage(imag, for: UIControlState.normal)
            i = i + 1
        }
        for view in stack2.arrangedSubviews {
            let imag = UIImage(named: images![i])
            let button = view as! UIButton
            button.setImage(imag, for: UIControlState.normal)
            i = i + 1
        }
        for view in stack3.arrangedSubviews {
            let imag = UIImage(named: images![i])
            let button = view as! UIButton
            button.setImage(imag, for: UIControlState.normal)
            i = i + 1
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
    
    @IBOutlet weak var stack: UIStackView!

    @IBOutlet weak var randomize: UIButton!
    
    @IBOutlet weak var stack1: UIStackView!
    
    @IBOutlet weak var stack2: UIStackView!
    
    @IBOutlet weak var stack3: UIStackView!
    
    @IBAction func randomizerAction(_ sender: Any) {
        loadImages()
    }
}


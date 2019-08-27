//
//  ViewController.swift
//  Camera
//
//  Created by David [Entei] Xiong on 3/21/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,
    UINavigationControllerDelegate {
    // You may have to implement more protocols!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func photoLibraryButtonPressed(_ sender: UIButton) {
        // Your code here
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
    @IBAction func cameraButtonPressed(_ sender: UIButton) {
        // Your code here
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        self.present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
    }
    
}


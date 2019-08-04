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
    var chosenImage: UIImage?
    
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
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        if let identifier = segue.identifier {
            if identifier == "imagePickerSegue" {
                if let dest = segue.destination as? ImageViewController {
                    dest.image = chosenImage
                }
            }
        }
     }
    
    
    @IBOutlet weak var stack: UIStackView!

    @IBOutlet weak var randomize: UIButton!
    
    @IBOutlet weak var stack1: UIStackView!
    
    @IBOutlet weak var stack2: UIStackView!
    
    @IBOutlet weak var stack3: UIStackView!
    
    @IBAction func randomizerAction(_ sender: Any) {
        loadImages()
    }
    
    @IBAction func buttonChosen(_ sender: Any) {
        chosenImage = Button0!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button0!.currentImage!)
    }
    
    @IBAction func Button1Pressed(_ sender: Any) {
        chosenImage = Button1!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button1!.currentImage!)
    }
  
    @IBAction func Button2Pressed(_ sender: Any) {
        chosenImage = Button2!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button2!.currentImage!)
    }
    
    @IBAction func Button3Pressed(_ sender: Any) {
        chosenImage = Button3!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button3!.currentImage!)
    }
   
    @IBAction func Button4Pressed(_ sender: Any) {
        chosenImage = Button4!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button4!.currentImage!)
    }
    
    @IBAction func Button5Pressed(_ sender: Any) {
        chosenImage = Button5!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button5!.currentImage!)
    }
    
    @IBAction func Button6Pressed(_ sender: Any) {
        chosenImage = Button6!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button6!.currentImage!)
    }
    
    @IBAction func Button7Pressed(_ sender: Any) {
        chosenImage = Button7!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button7!.currentImage!)
    }
    
    @IBAction func Button8Pressed(_ sender: Any) {
        chosenImage = Button8!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button8!.currentImage!)
    }
    
    @IBAction func Button9Pressed(_ sender: Any) {
        chosenImage = Button9!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button9!.currentImage!)
    }
    
    @IBAction func Button10Pressed(_ sender: Any) {
        chosenImage = Button10!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button10!.currentImage!)
    }
    
    @IBAction func Button11Pressed(_ sender: Any) {
        chosenImage = Button11!.currentImage!
        performSegue(withIdentifier: "imagePickerSegue", sender: Button11!.currentImage!)
    }
    
    @IBOutlet weak var Button0: UIButton!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
   
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var Button5: UIButton!
    
    @IBOutlet weak var Button6: UIButton!
    
    @IBOutlet weak var Button7: UIButton!
   
    @IBOutlet weak var Button8: UIButton!
    
    @IBOutlet weak var Button9: UIButton!
    
    @IBOutlet weak var Button10: UIButton!
    
    @IBOutlet weak var Button11: UIButton!
    
}


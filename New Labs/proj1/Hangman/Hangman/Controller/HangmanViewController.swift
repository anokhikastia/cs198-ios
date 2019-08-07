//
//  HangmanViewController
//  Hangman
//
//  Created by David [Entei] Xiong on 2/19/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var currGuess: String!

    @IBAction func A(_ sender: Any) {
        currGuess = "A"
        guess.text = "A"
    }
    
    @IBAction func B(_ sender: Any) {
        currGuess = "B"
        guess.text = "B"
    }
    
    @IBAction func C(_ sender: Any) {
        currGuess = "C"
        guess.text = "C"
    }
    
    @IBAction func D(_ sender: Any) {
        currGuess = "D"
        guess.text = "D"
    }
    
    @IBAction func E(_ sender: Any) {
        currGuess = "E"
        guess.text = "E"
    }
    
    @IBAction func F(_ sender: Any) {
        currGuess = "F"
        guess.text = "F"
    }
    
    @IBAction func G(_ sender: Any) {
        currGuess = "G"
        guess.text = "G"
    }
    
    @IBAction func H(_ sender: Any) {
        currGuess = "H"
        guess.text = "H"
    }
    
    @IBAction func I(_ sender: Any) {
        currGuess = "I"
        guess.text = "I"
    }
    
    @IBAction func J(_ sender: Any) {
        currGuess = "J"
        guess.text = "J"
    }
    
    @IBAction func K(_ sender: Any) {
        currGuess = "K"
        guess.text = "K"
    }
    
    @IBAction func L(_ sender: Any) {
        currGuess = "L"
        guess.text = "L"
    }
    
    @IBAction func M(_ sender: Any) {
        currGuess = "M"
        guess.text = "M"
    }
    
    @IBAction func N(_ sender: Any) {
        currGuess = "N"
        guess.text = "N"
    }
    
    @IBAction func O(_ sender: Any) {
        currGuess = "O"
        guess.text = "O"
    }
    
    @IBAction func P(_ sender: Any) {
        currGuess = "P"
        guess.text = "P"
    }
    
    @IBAction func Q(_ sender: Any) {
        currGuess = "Q"
        guess.text = "Q"
    }
    
    @IBAction func R(_ sender: Any) {
        currGuess = "R"
        guess.text = "R"
    }
   
    @IBAction func S(_ sender: Any) {
        currGuess = "S"
        guess.text = "S"
    }
    
    @IBAction func T(_ sender: Any) {
        currGuess = "T"
        guess.text = "T"
    }
    
    @IBAction func U(_ sender: Any) {
        currGuess = "U"
        guess.text = "U"
    }
    
    @IBAction func V(_ sender: Any) {
        currGuess = "V"
        guess.text = "V"
    }
    
    @IBAction func W(_ sender: Any) {
        currGuess = "W"
        guess.text = "W"
    }
    
    @IBAction func X(_ sender: Any) {
        currGuess = "X"
        guess.text = "X"
    }
    
    @IBAction func Y(_ sender: Any) {
        currGuess = "Y"
        guess.text = "Y"
    }
    
    @IBAction func Z(_ sender: Any) {
        currGuess = "Z"
        guess.text = "Z"
    }
    
    @IBOutlet weak var guess: UILabel!
    
    
    @IBOutlet weak var picture: UIImageView!
    
    
}


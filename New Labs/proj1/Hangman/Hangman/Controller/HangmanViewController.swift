//
//  HangmanViewController
//  Hangman
//
//  Created by David [Entei] Xiong on 2/19/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {
    
    var characters: Array<Character> = []
    var incorrect_Characters: Array<Character> = []
    var letter: Character? = nil
    var word: Array<Character> = []
    var pressed: Array<Character> = []
    var imageNo: Int = 1
    var state: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        start()
    }
    
    func start() {
        let hangmanPhrases = HangmanPhrases()
        var phrase = hangmanPhrases.getRandomPhrase()
        characters = Array(phrase.characters)
        for c in characters {
            if (c != " ") {
                word += ["-"]
                continue
            }
            word += [" "]
        }
        label.text = String(word)
        hangmanImg.image = UIImage(named: "hangman" + String(imageNo))
    }
    
    func updateWordToGuess() {
        if (label == nil || pressed.contains(letter!) || state) {
            return
        }
        pressed += [letter!]
        let count: Int = characters.count
        for i in 0..<count {
            if (characters[i] == letter!) {
                word[i] = letter!
            }
        }
        label.text = String(word)
        if !characters.contains(letter!) {
            update_incorrect_guesses(letter: letter!)
        }
        let msg: String = "Congratulations! You Guessed it:\n" + String(characters) + "!\n\nPress New Game!"
        print(String(word))
        if (!word.contains("-")) {
            state = true
            let alert = UIAlertController(title: "You Win!", message: msg, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func update_incorrect_guesses(letter: Character) {
        incorrect_Characters = incorrect_Characters + [letter, " "]
        incorrectGuesses.text = String(incorrect_Characters)
        update_img()
    }
    
    func update_img() {
        imageNo = imageNo + 1
        hangmanImg.image = UIImage(named: "hangman" + String(imageNo))
        
        let msg: String = "The Phrase Was:\n" + String(characters) + "!\n\nPress New Game to play again!"
        let curr_count: Int = incorrect_Characters.count
        if (curr_count > 10) {
            let alert = UIAlertController(title: "You Lose!", message: msg, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            return
        }
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func A(_ sender: Any) {
        letter = "A"
        guess.text = "A"
        updateWordToGuess()
    }
    
    @IBAction func B(_ sender: Any) {
        letter = "B"
        guess.text = "B"
        updateWordToGuess()
    }
    
    @IBAction func C(_ sender: Any) {
        letter = "C"
        guess.text = "C"
        updateWordToGuess()
    }
    
    @IBAction func D(_ sender: Any) {
        letter = "D"
        guess.text = "D"
        updateWordToGuess()
    }
    
    @IBAction func E(_ sender: Any) {
        letter = "E"
        guess.text = "E"
        updateWordToGuess()
    }
    
    @IBAction func F(_ sender: Any) {
        letter = "F"
        guess.text = "F"
        updateWordToGuess()
    }
    
    @IBAction func G(_ sender: Any) {
        letter = "G"
        guess.text = "G"
        updateWordToGuess()
    }
    
    @IBAction func H(_ sender: Any) {
        letter = "H"
        guess.text = "H"
        updateWordToGuess()
    }
    
    @IBAction func I(_ sender: Any) {
        letter = "I"
        guess.text = "I"
        updateWordToGuess()
    }
    
    @IBAction func J(_ sender: Any) {
        letter = "J"
        guess.text = "J"
        updateWordToGuess()
    }
    
    @IBAction func K(_ sender: Any) {
        letter = "K"
        guess.text = "K"
        updateWordToGuess()
    }
    
    @IBAction func L(_ sender: Any) {
        letter = "L"
        guess.text = "L"
        updateWordToGuess()
    }
    
    @IBAction func M(_ sender: Any) {
        letter = "M"
        guess.text = "M"
        updateWordToGuess()
    }
    
    @IBAction func N(_ sender: Any) {
        letter = "N"
        guess.text = "N"
        updateWordToGuess()
    }
    
    @IBAction func O(_ sender: Any) {
        letter = "O"
        guess.text = "O"
        updateWordToGuess()
    }
    
    @IBAction func P(_ sender: Any) {
        letter = "P"
        guess.text = "P"
        updateWordToGuess()
    }
    
    @IBAction func Q(_ sender: Any) {
        letter = "Q"
        guess.text = "Q"
        updateWordToGuess()
    }
    
    @IBAction func R(_ sender: Any) {
        letter = "R"
        guess.text = "R"
        updateWordToGuess()
    }
   
    @IBAction func S(_ sender: Any) {
        letter = "S"
        guess.text = "S"
        updateWordToGuess()
    }
    
    @IBAction func T(_ sender: Any) {
        letter = "T"
        guess.text = "T"
        updateWordToGuess()
    }
    
    @IBAction func U(_ sender: Any) {
        letter = "U"
        guess.text = "U"
        updateWordToGuess()
    }
    
    @IBAction func V(_ sender: Any) {
        letter = "V"
        guess.text = "V"
        updateWordToGuess()
    }
    
    @IBAction func W(_ sender: Any) {
        letter = "W"
        guess.text = "W"
        updateWordToGuess()
    }
    
    @IBAction func X(_ sender: Any) {
        letter = "X"
        guess.text = "X"
        updateWordToGuess()
    }
    
    @IBAction func Y(_ sender: Any) {
        letter = "Y"
        guess.text = "Y"
        updateWordToGuess()
    }
    
    @IBAction func Z(_ sender: Any) {
        letter = "Z"
        guess.text = "Z"
        updateWordToGuess()
    }
    
    @IBAction func Hash(_ sender: Any) {
        letter = "#"
        guess.text = "#"
        updateWordToGuess()
    }
    
    @IBOutlet weak var guess: UILabel!
    
    @IBOutlet weak var hangmanImg: UIImageView!
    
    @IBOutlet weak var incorrectGuesses: UILabel!
    
    @IBAction func startOver(_ sender: Any) {
        start()
        let msg = "You are about to restart!"
        let alert = UIAlertController(title: "Restart Game", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}


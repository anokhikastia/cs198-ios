//
//  HangmanPhrases.swift
//  Hangman
//
//  Created by Anokhi Kastia on 8/6/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import Foundation

class HangmanPhrases  {
    
    var phrases: NSArray!
    
    init() {
        let path = Bundle.main.path(forResource: "phrases", ofType: "plist")
        phrases = NSArray.init(contentsOfFile: path!)
    }
    
    @objc dynamic func getRandomPhrase() -> String {
        let index = Int(arc4random_uniform(UInt32(phrases.count)))
        return phrases.object(at: index) as! String
    }
}

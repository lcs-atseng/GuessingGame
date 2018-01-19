//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Tseng, Alice on 2018-01-17.
//  Copyright © 2018 Tseng, Alice. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    // Property
    var numberToGuess : Int
    
    // Initializer
    init() {
        numberToGuess = Int(arc4random_uniform(501)) // Generate a number between 0 and 500 (but not 501)
    }
    //Compare the guess made to the secret number
    // if-else if-else
    func compareGuessToNumber(guessMade: Int) -> String {
        if numberToGuess == guessMade {
            return "You got it!"
        }
        else if numberToGuess > guessMade {
            return "Guess Higher!"
        }
        else {
            return "Guess Lower!"
        }
  
    }
  
}




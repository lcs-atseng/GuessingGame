//
//  ViewController.swift
//  GuessingGame
//
//  Created by Tseng, Alice on 2018-01-09.
//  Copyright © 2018 Tseng, Alice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var labelsMessages: UILabel!
    @IBOutlet weak var guessedNumber: UITextField!
    
    //MARK: Properties
    var game = GuessingGame()
    
    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func guessMade(_ sender: Any) {
        print("A guess was made.")
        print(guessedNumber.text)
        
        //First we need to unwrap the optional text from the text field
        //inputGiven is a String(non-optional) - Guaranteed to contain a value (it is not nil)
        
        guard let inputGiven = guessedNumber.text else {
            //If the input was nil, stop, and exit the function
            return
        }
        
        guard let guessProvided = Int(inputGiven) else {
            //We couldn't make an integer
            //e.g.: Somebody typed "five" instead of 5
            return
        }
        
        //Print the actual number that was given
        print(guessProvided)
        
        //Print out the nuver that needs to be guessed
        print("The number to be guessed is:")
        print(game.numberToGuess)
        
        // check the guess
        labelsMessages.text = game.compareGuessToNumber(guessMade: guessProvided)
        
    }
    //MARK: Custom functions
    
}


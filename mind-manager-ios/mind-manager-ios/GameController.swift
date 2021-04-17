//
//  GameController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 18/03/21.
//

import UIKit

class GameController: UIViewController {
    
    // Instance of SuggestionsController
    var instanceSuggestion = SuggestionsController()
    
    // Instance of ViewController
    var instanceMain = WelcomeController()
    
    // Word Search Image View
    @IBOutlet weak var wordSearchImage: UIImageView!
    
    // Text field where user will write the word found
    @IBOutlet weak var inputResult: UITextField!
    
    // Label where the result will be displayed after clicking btnCheck
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var lblWordsFound: UILabel!
    
    @IBOutlet weak var tapCheck: UIButton!
    
    
    var counter = 4
    var foundArray: [String] = []
    
    // Check Button - display result in the lblResult
    @IBAction func btnCheck(_ sender: Any) {
        
        let happierWords = ["cheerful", "ecstatic", "overjoyed", "joyful"]
        
        let userInput =  inputResult.text ?? ""
        
        // Check if the input is empty
        if inputResult.text == nil || inputResult.text == "" {
            // Turn the lblResult to red
            lblResult.textColor = UIColor.red
            
            // Print to lblResult
            lblResult.text = "Please enter a word!"
            
            // Clear the input text
            inputResult.text = ""
        }
        
        // Check if user input does not exists in the crossword
        else if !happierWords.contains(userInput.lowercased()) {
            // Turn the lblResult to red
            lblResult.textColor = UIColor.red
            
            // Print to lblResult
            lblResult.text = "The word '\(userInput.lowercased())' is wrong!\n Try again!"
        }
        
        // Checking if user input exists in the crossword and if is not the last word to find
        else if happierWords.contains(userInput.lowercased()) && (counter > 1) {
            
            // Checking if user input is not already found
            if foundArray.contains(userInput.lowercased()) == false {
                lblWordsFound.text = ""
                lblResult.textColor = UIColor.black
                counter -= 1
                lblResult.text = "You found '\(userInput.lowercased())'!\nThere is \(counter) to go"
                inputResult.text = ""
                
                // adding the new word found to the array
                foundArray.append(userInput.lowercased())
                
                // print the words that was already found
                for word in foundArray {
                    lblWordsFound.text! += "\(word)\n"
                }
            }
            
            // checking if user input is already found
            else if foundArray.contains(userInput.lowercased()) {
                inputResult.text = ""
                lblResult.textColor = UIColor.red
                lblResult.text = "You already found '\(userInput.lowercased())'!\nThere is \(counter) to go"
            }
            
        }
        
        // Checking if user input exists in the crossword and if is the last word to find
        else if happierWords.contains(userInput.lowercased()) && (counter == 1) && foundArray.contains(userInput.lowercased()) == false {
            lblWordsFound.text = ""
            lblResult.textColor = UIColor.blue
            lblResult.text = "You found '\(userInput.lowercased())'!\nYou found them all!"
            inputResult.text = ""
            foundArray.append(userInput.lowercased())
            
            // user is not able to click or type anymore
            inputResult.isEnabled = false
            tapCheck.isEnabled = false
            
            // print the words that was already found
            for word in foundArray {
                lblWordsFound.text! += "\(word)\n"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // HAVE TO CHECK WHICH BUTTON WAS CLICKED
        // Get a random element (image) from the array
        wordSearchImage.image = instanceSuggestion.happierArray.randomElement()
        lblResult.text = ""
        lblWordsFound.text = ""
    }
}

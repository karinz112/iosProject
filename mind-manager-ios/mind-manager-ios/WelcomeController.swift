//
//  ViewController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/03/21.
//

import UIKit

class WelcomeController: UIViewController{
    
    var mood:String = ""
    
    // More Moody option
    @IBAction func btnMoody(_ sender: Any) {
        mood = "Moody"
    }
    
    // Happier option
    @IBAction func btnHappier(_ sender: Any) {
        mood = "Happier"
    }
    
    // More Energetic option
    @IBAction func btnEnergetic(_ sender: Any) {
        mood = "Energetic"
    }
    
    // Calmer option
    @IBAction func btnCalmer(_ sender: Any) {
        mood = "Calmer"
    }
    
    // More Relaxed option
    @IBAction func btnRelaxed(_ sender: Any) {
        mood = "Relaxed"
    }
    
    // I Don't Know option
    @IBAction func btnIDontKnow(_ sender: Any) {
        mood = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var lblLogin: UIBarButtonItem!
    
//    // This function is called before the segue
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        // Get a reference to the second view controller
//        let suggestionViewController = segue.destination as! SuggestionsController
//        let questionViewController = segue.destination as! QuestionsController        // Set a variable in the second view controller with the String to pass
//        suggestionViewController.receivedString = mood
//    }
}




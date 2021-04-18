//
//  ViewController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/03/21.
//

import UIKit

class WelcomeController: UIViewController{
    
    
    // More Moody option
    @IBAction func btnMoody(_ sender: Any) {

        let displayVC : SuggestionsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SuggestionsId") as! SuggestionsController
        displayVC.receivedString = "Moody"
       
        self.present(displayVC, animated: true, completion: nil)
    }
    
    // Happier option
    @IBAction func btnHappier(_ sender: Any) {
        // the name for UIStoryboard is the file name of the storyboard without the .storyboard extension
        let displayVC : SuggestionsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SuggestionsId") as! SuggestionsController
        displayVC.receivedString = "Happier"
       
        self.present(displayVC, animated: true, completion: nil)
    }
    
    // More Energetic option
    @IBAction func btnEnergetic(_ sender: Any) {
        let displayVC : SuggestionsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SuggestionsId") as! SuggestionsController
        displayVC.receivedString = "Energetic"
       
        self.present(displayVC, animated: true, completion: nil)
    }
    
    // Calmer option
    @IBAction func btnCalmer(_ sender: Any) {
        let displayVC : SuggestionsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SuggestionsId") as! SuggestionsController
        displayVC.receivedString = "Calmer"
       
        self.present(displayVC, animated: true, completion: nil)
    }
    
    // More Relaxed option
    @IBAction func btnRelaxed(_ sender: Any) {
        let displayVC : SuggestionsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SuggestionsId") as! SuggestionsController
        displayVC.receivedString = "Relaxed"
       
        self.present(displayVC, animated: true, completion: nil)

    }
    
    // I Don't Know option
    @IBAction func btnIDontKnow(_ sender: Any) {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var lblLogin: UIBarButtonItem!
    
}




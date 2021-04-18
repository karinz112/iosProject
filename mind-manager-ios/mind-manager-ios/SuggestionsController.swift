//
//  SuggestionsController.swift
//  mind-manager-ios
//
//

import SideMenu
import UIKit
 class SuggestionsController: UIViewController{
    
    var receivedString = ""
    var mood:String = ""
    
    @IBAction func btnPlay(_ sender: Any) {
        
        let displayVC : MusicPlayerController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MusicPlayerId") as! MusicPlayerController
        displayVC.receivedString = receivedString
       
        self.present(displayVC, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var lblMood: UILabel!
    
    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!
    
    // Hard-coding suggestions
    
    // Calmer
    var calmerSport = ["Yoga", "Swimming"]

    var energeticSport = ["Laser-Tag", "Running"]
    
    var energeticActivity = ["Dance","Run", "Fitness", "Gymnastic"]

    var happierSport = ["Paint-Ball", "Laser Tag"]

    var moodySport = ["Walk in Park", "Swimming"]

    var relaxedSport = ["Yoga", "Biking"]

 
    @IBAction func btnOutdoors(_ sender: Any) {
        let displayVC : OutdoorsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OutdoorsId") as! OutdoorsController
        displayVC.receivedString = receivedString
       
        self.present(displayVC, animated: true, completion: nil)
    }
    
    
    
    @IBAction func btnSports(_ sender: Any) {
        let displayVC : SportController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SportsId") as! SportController
        displayVC.receivedString = receivedString
       
        self.present(displayVC, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMood.text = receivedString
        lblSport?.text = happierSport.randomElement()
    }
}

//
//  SportController.swift
//  mind-manager-ios
//
//  Created by Vladislav Chernyi on 28.03.2021.
//

import Foundation
import UIKit
 
class SportController: UIViewController {
    let suggestionsController = SuggestionsController()

    @IBOutlet weak var lblSport: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //for now using moodySport
        let control = suggestionsController.moodySport.randomElement();
        lblSport.text = control;
     }
}

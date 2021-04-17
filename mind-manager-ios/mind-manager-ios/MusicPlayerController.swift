//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//

import UIKit
import youtube_ios_player_helper
 
class MusicPlayerController: UIViewController, SuggestionReadModelProtocol, YTPlayerViewDelegate{
    
    var suggestionReadItems: NSArray = NSArray()
    var selectedStock : SuggestionModel = SuggestionModel(id:"id", mood:"mood", category_name:"category_name", suggestion_name:"suggestion_name", youtube_links:"youtube_links")
    
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    let suggestionsController = SuggestionsController()
    var receivedString = ""
    var num1:Int = 0
    var videoID:String = ""
    
    @IBOutlet var playerView: YTPlayerView!
    
    @IBAction func btnRandom(_ sender: UIButton) {
        viewDidLoad().self

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let suggestionReadModel = SuggestionReadModel()
        suggestionReadModel.delegate = self
        suggestionReadModel.downloadItems()
        
     }
    
    //load suggestions
    func suggestionsDownloaded(items: NSArray) {
        
        let musics = NSMutableArray()
        
        //find suggestions for mood and category
        for item in items{
            let suggestion: SuggestionModel = item as! SuggestionModel
            if (suggestion.mood == receivedString && suggestion.category_name == "Music"){
                musics.add(suggestion)
            }
        }
        
        num1 = randomNum(items:musics)
        let suggestion: SuggestionModel = musics[num1] as! SuggestionModel
        
        //print suggestion
        videoID = suggestion.youtube_links as String
        playerView.delegate = self
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        songName.text = suggestion.suggestion_name as String
    }

    //random functions. We need it for choose random indexes in suggestions array
    func randomInt(max: Int) -> Int {
        let rand: Int = Int(arc4random())
        return (rand % max) + 1
    }
    
    func randomNum(items: NSArray) -> Int {
        let max: Int = items.count-1
        let random = randomInt(max: max)
        return random
    }
}

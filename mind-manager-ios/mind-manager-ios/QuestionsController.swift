//
//  QuestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 18/03/21.
//

import UIKit

class QuestionsController: UIViewController, QuestionReadModelProtocol, AnswerReadModelProtocol{
    
    //Properties
    var mood:String = ""
    var questionReadItems: NSArray = NSArray()
    var answerReadItems: NSArray = NSArray()
    var selectedStock : AnswerModel = AnswerModel(id:"id", question_id:"question_id", answer_text:"answer_text", bored_rating:"bored_rating", energetic_rating:"energetic_rating", happy_rating:"happy_rating", sad_rating:"sad_rating", tired_rating:"tired_rating")
    
    @IBOutlet weak var lblQuestion01: UILabel!
    @IBOutlet weak var a11: UILabel!
    @IBOutlet weak var a12: UILabel!
    @IBOutlet weak var a13: UILabel!
    
    @IBOutlet weak var lblQuestion02: UILabel!
    @IBOutlet weak var a21: UILabel!
    @IBOutlet weak var a22: UILabel!
    @IBOutlet weak var a23: UILabel!
    
    @IBOutlet weak var lblQuestion03: UILabel!
    @IBOutlet weak var a31: UILabel!
    @IBOutlet weak var a32: UILabel!
    @IBOutlet weak var a33: UILabel!
    
    var num1:Int = 0
    var num2:Int = 0
    var num3:Int = 0
    var num4:Int = 0
    var receivedString = ""
    let moods:[String]=["Relaxed","Calmer","Happier","Energetic", "Moody"]

 
    @IBAction func btnRandom1(_ sender: UIButton) {
        viewDidLoad().self

    }
    
    @IBOutlet weak var btnSubmitCheck: UIButton!
    
    @IBAction func btnSubmit(_ sender: Any) {
        num4 = randomNum2(items:4)
        mood = moods[num4]
        let displayVC : SuggestionsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SuggestionsId") as! SuggestionsController
        displayVC.receivedString = mood
       
        self.present(displayVC, animated: true, completion: nil)    }
 
    @IBAction func btnQ1A1(_ sender: Any) {
        btnQ1A2Check.isEnabled = false
        btnQ1A2Check.backgroundColor = UIColor.gray
        btnQ1A3Check.isEnabled = false
        btnQ1A3Check.backgroundColor = UIColor.gray
        btnQ1A1Check.isEnabled = false
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ1A2(_ sender: UIButton) {
        btnQ1A1Check.isEnabled = false
        btnQ1A1Check.backgroundColor = UIColor.gray
        btnQ1A3Check.isEnabled = false
        btnQ1A3Check.backgroundColor = UIColor.gray
        btnQ1A2Check.isEnabled = false
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
 
    
    @IBAction func btnQ1A3(_ sender: UIButton) {
        btnQ1A1Check.isEnabled = false
        btnQ1A1Check.backgroundColor = UIColor.gray
        btnQ1A2Check.isEnabled = false
        btnQ1A2Check.backgroundColor = UIColor.gray
        btnQ1A3Check.isEnabled = false
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
 
 
    
    var counter = 0
     override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let questionReadModel = QuestionReadModel()
        questionReadModel.delegate = self
        questionReadModel.downloadItems()
        let answerReadModel = AnswerReadModel()
        answerReadModel.delegate = self
        answerReadModel.downloadItems()
        
        
        
        
        
        btnSubmitCheck.isEnabled = false
        btnSubmitCheck.backgroundColor = UIColor.gray
        
        counter = 0
        
        btnQ1A1Check.isEnabled = true
        btnQ1A1Check.backgroundColor = UIColor.blue
        btnQ1A2Check.isEnabled = true
        btnQ1A2Check.backgroundColor = UIColor.blue
        btnQ1A3Check.isEnabled = true
        btnQ1A3Check.backgroundColor = UIColor.blue
        
        btnQ2A1Check.isEnabled = true
        btnQ2A1Check.backgroundColor = UIColor.blue
        btnQ2A2Check.isEnabled = true
        btnQ2A2Check.backgroundColor = UIColor.blue
        btnQ2A3Check.isEnabled = true
        btnQ2A3Check.backgroundColor = UIColor.blue
        
        btnQ3A1Check.isEnabled = true
        btnQ3A1Check.backgroundColor = UIColor.blue
        btnQ3A1Check.isEnabled = true
        btnQ3A2Check.backgroundColor = UIColor.blue
        btnQ3A3Check.isEnabled = true
        btnQ3A3Check.backgroundColor = UIColor.blue
 
    }
    
    
    
    //load questions
    func questionsDownloaded(items: NSArray) {
        
        //choose 4 not repeated random numbers
        num1 = randomNum(items:items)
        repeat{
            num2 = randomNum(items:items)
        } while(num2 == num1)
        
        repeat{
            num3 = randomNum(items:items)
        } while(num3 == num1 || num3 == num2)
        
        //print 4 questions with not repeated random id
        lblQuestion01.text = "\(String(describing: items[num1]))"
        lblQuestion02.text = "\(String(describing: items[num2]))"
        lblQuestion03.text = "\(String(describing: items[num3]))"
    }
    
    //load answers
    func answersDownloaded(items: NSArray) {
        
        let answers1 = NSMutableArray()
        let answers2 = NSMutableArray()
        let answers3 = NSMutableArray()
        
        //find answers for question 1
        for item in items{
        let ans: AnswerModel = item as! AnswerModel
            if (ans.question_id == String(num1+1)){
                answers1.add(ans.answer_text)
           }
        }
        
        //print answers for question 1
        a11.text = answers1[0] as? String
        a12.text = answers1[1] as? String
        a13.text = answers1[2] as? String
        
        //find answers for question 2
        for item in items{
            let ans: AnswerModel = item as! AnswerModel
            if (ans.question_id == String(num2+1)){
                answers2.add(ans.answer_text)
            }
        }
        
        //print answers for question 2
        a21.text = answers2[0] as? String
        a22.text = answers2[1] as? String
        a23.text = answers2[2] as? String
        
        //find answers for question 3
        for item in items{
            let ans: AnswerModel = item as! AnswerModel
            if (ans.question_id == String(num3+1)){
                answers3.add(ans.answer_text)
            }
        }
        
        //print answers for question 3
        a31.text = answers3[0] as? String
        a32.text = answers3[1] as? String
        a33.text = answers3[2] as? String
    }
    
    //random functions. We need it for choose random indexes in questions array
    func randomInt(max: Int) -> Int {
        let rand: Int = Int(arc4random())
        return (rand % max) + 1
    }
    
    func randomNum(items: NSArray) -> Int {
        let max: Int = items.count-1
        let random = randomInt(max: max)
        return random
    }
    
    func randomNum2(items: Int) -> Int {
        let max: Int = items
        let random = randomInt(max: max)
        return random
    }
    
    @IBAction func btnQ2A1(_ sender: UIButton) {
        btnQ2A2Check.isEnabled = false
        btnQ2A2Check.backgroundColor = UIColor.gray
        btnQ2A3Check.isEnabled = false
        btnQ2A3Check.backgroundColor = UIColor.gray
        btnQ2A1Check.isEnabled = false
        
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
  
    @IBAction func btnQ2A2(_ sender: UIButton) {
        btnQ2A1Check.isEnabled = false
        btnQ2A1Check.backgroundColor = UIColor.gray
        btnQ2A3Check.isEnabled = false
        btnQ2A3Check.backgroundColor = UIColor.gray
        btnQ2A2Check.isEnabled = false
        
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
 
    @IBAction func btnQ2A3(_ sender: UIButton) {
        btnQ2A1Check.isEnabled = false
        btnQ2A1Check.backgroundColor = UIColor.gray
        btnQ2A2Check.isEnabled = false
        btnQ2A2Check.backgroundColor = UIColor.gray
        btnQ2A3Check.isEnabled = false
        
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
 
 
    @IBAction func btnQ3A1(_ sender: UIButton) {
        btnQ3A2Check.isEnabled = false
        btnQ3A2Check.backgroundColor = UIColor.gray
        btnQ3A3Check.isEnabled = false
        btnQ3A3Check.backgroundColor = UIColor.gray
        btnQ3A1Check.isEnabled = false
        
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
 
    @IBAction func btnQ3A2(_ sender: UIButton) {
        btnQ3A1Check.isEnabled = false
        btnQ3A1Check.backgroundColor = UIColor.gray
        btnQ3A3Check.isEnabled = false
        btnQ3A3Check.backgroundColor = UIColor.gray
        btnQ3A2Check.isEnabled = false
        
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ3A3(_ sender: Any) {
        btnQ3A1Check.isEnabled = false
        btnQ3A1Check.backgroundColor = UIColor.gray
        btnQ3A2Check.isEnabled = false
        btnQ3A2Check.backgroundColor = UIColor.gray
        btnQ3A3Check.isEnabled = false
        
        counter += 1
        
        if counter == 3 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
 
    @IBOutlet weak var btnQ3A3Check: UIButton!
    @IBOutlet weak var btnQ3A2Check: UIButton!
    @IBOutlet weak var btnQ3A1Check: UIButton!
    
    @IBOutlet weak var btnQ2A1Check: UIButton!
    @IBOutlet weak var btnQ2A3Check: UIButton!
    @IBOutlet weak var btnQ2A2Check: UIButton!
  
    @IBOutlet weak var btnQ1A3Check: UIButton!
    @IBOutlet weak var btnQ1A2Check: UIButton!
    @IBOutlet weak var btnQ1A1Check: UIButton!
}

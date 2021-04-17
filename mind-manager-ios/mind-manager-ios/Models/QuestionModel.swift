//
//  QuestionModel.swift
//  mind-manager-ios
//
//

import Foundation

class QuestionModel: NSObject {
    
    //properties
    var id: String
    var question_text: String
    
    //constructor
    init(id:String, question_text:String) {
        self.id = id
        self.question_text = question_text
    }
    
    //print String
    override var description: String {
        return "\(String(describing: question_text))"
    }
}

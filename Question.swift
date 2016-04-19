//
//  Question.swift
//  menloHacksProject
//
//  Created by Nolan Jimenez on 4/17/16.
//  Copyright © 2016 Nolan. All rights reserved.
//

import Foundation

class Question {
    var questionText: String = ""
    var answers = [Answer]()
    
    init (questionText: String , answers: [Answer]) {
        self.questionText = questionText
        self.answers = answers
    }
    
}
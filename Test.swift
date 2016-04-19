//
//  Test.swift
//  menloHacksProject
//
//  Created by Nolan Jimenez on 4/17/16.
//  Copyright © 2016 Nolan. All rights reserved.
//

import Foundation

class Test {
    var testName: String
    var questions:[Question]
    
    init(testName: String, questions: [Question]) {
        self.testName = testName
        self.questions = questions
    }
}
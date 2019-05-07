//
//  Question.swift
//  QuizA+
//
//  Created by Trevor on 5/1/19.
//  Copyright © 2019 Trevor Gorham. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    var answer : [Int] = [0,1,2,3]
    
    init(text: String, correctAnswer: [Int]){
        questionText = text
        answer = correctAnswer
    }
}


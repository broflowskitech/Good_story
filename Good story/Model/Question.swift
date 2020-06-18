//
//  Question.swift
//  Good story
//
//  Created by Jan B on 28/04/2020.
//  Copyright © 2020 broflowski. All rights reserved.
//

import Foundation

struct Question {
    let storyQuestion: String
    let answerA: String
    let answerAKey: Int
    let answerB: String
    let answerBKey: Int
    
    init(q: String, a: String, aKey: Int, b: String, bKey: Int) {
        storyQuestion = q
        answerA = a
        answerAKey = aKey
        answerB = b
        answerBKey = bKey
    }
}

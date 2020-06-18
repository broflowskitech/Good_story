//
//  Story.swift
//  Good story
//
//  Created by Jan B on 29/04/2020.
//  Copyright © 2020 broflowski. All rights reserved.
//

import Foundation


struct Story {
 let questionsArray = [
    Question(q: "You wake up in an empty room with a single window, nothing else",
             a: "Stay lying", aKey: 1,
             b:"Go to the window", bKey: 3),
    Question(q: "Fall asleep. Do you want to wake up?", //1
             a: "Yes", aKey: 0,
             b: "No", bKey: 2),
    Question(q: "You died", //2
             a: "Play again", aKey: 0,
             b: "Play again", bKey: 0),
    Question(q: "Outside is forrest, everywhere, covered in snow", //3
             a: "Open the window and jump", aKey:4,
             b: "Lie down", bKey: 1),
    Question(q: "There is a small road ahead of you", //4
             a: "Go", aKey: 5,
             b: "Go back", bKey: 1),
    Question(q: "You are goind through the forrest, nothing around, only trees, snow and silence", //5
             a: "Continue", aKey: 6,
             b: "Go back", bKey: 1),
    Question(q: "Suddenly, a loud noise cuts through the silence" , //6
             a: "Run for your life", aKey: 7,
             b: "Stay and wait", bKey: 2),
    Question(q: "You stop. Now you are sure of one thing. You are not here alone.", //7
             a: "Keep thinking", aKey: 2,
             b: "Run again", bKey: 2), ]
    
    var questionNumber = 0
    

    
    
    func getQuestionLabel () -> String {
        return questionsArray[questionNumber].storyQuestion
    }
    
    func getAnswerA() -> String {
        return questionsArray[questionNumber].answerA
    }
 
    func getAnswerB() -> String {
        return questionsArray[questionNumber].answerB
    }
    
    
        
     mutating func nextQuestion(userChoice: String) {
           
            let currentQuestion = questionsArray[questionNumber]
            if userChoice == currentQuestion.answerA {
                questionNumber = currentQuestion.answerAKey
                }
            else if userChoice == currentQuestion.answerB {
                questionNumber = currentQuestion.answerBKey
                }
           }
}
    



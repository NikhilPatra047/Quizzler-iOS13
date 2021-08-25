//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Nikhil Kumar Patra on 16/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct quizBrain {
    let quiz = [
        question(q: "Four + Two is equal to six", a:  "True"),
        question(q: "Four - three is equal to one", a: "True"),
        question(q: "Five + three is equal to ten", a: "False"),
        question(q: "A slug's blood is green.", a: "True"),
                question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                question(q: "Google was originally called 'Backrub'.", a: "True"),
                question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool { //the function can take an internal name and an external name. The internal name is used when inside the function and an external name is used when outside the function. In case if the internal name doesn't exist, we replace it with _
        
        if (userAnswer == quiz[questionNumber].answer) {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func getNextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
}

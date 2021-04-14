//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by aawan on 8/4/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct quizBrain {
    let quiz = [
        Question("A slug's blood is green.", "True"),
        Question("Approximately one quarter of human bones are in the feet.", "True"),
        Question("The total surface area of two human lungs is approximately 70 square metres.", "True"),
        Question("In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", "True"),
        Question("In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", "False"),
        Question("It is illegal to pee in the Ocean in Portugal.", "True"),
        Question("You can lead a cow down stairs but not up stairs.", "False"),
        Question("Google was originally called 'Backrub'.", "True"),
        Question("Buzz Aldrin's mother's maiden name was 'Moon'.", "True"),
        Question("The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", "False"),
        Question("No piece of square dry paper can be folded in half more than 7 times.", "False"),
        Question("Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", "True")]
    var questionNumber = 0
    var correctAnswer = 0
    mutating func getNextQuestion() -> String {
        
        let question =  quiz[questionNumber].question
        questionNumber += 1
        if questionNumber > (quiz.count-1) {
            questionNumber = 0
            correctAnswer = 0
        }
        return question
    }
    mutating func getCorrectValue(_ userAnswer : String) -> Bool {
        let  actualAnswer = quiz[questionNumber].answer
        if actualAnswer == userAnswer {
            correctAnswer+=1
            return true
        }
        else {
            return false
        }
        
    }
    func getScore() -> String {
        return  String(correctAnswer)
    }
    
    func getProgressValue() ->Float {
        let progressValue = Float(questionNumber) / Float(Float(quiz.count)-1)
        return progressValue
        
    }
    
    
    
}

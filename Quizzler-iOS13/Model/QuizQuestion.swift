//
//  QuizQuestion.swift
//  Quizzler-iOS13
//
//  Created by aawan on 8/4/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question :String
    
     let answer : String
    
    init( _ q: String , _ a : String ) {
        question = q
        answer = a
    }
}

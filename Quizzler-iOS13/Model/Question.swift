//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Nikhil Kumar Patra on 15/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct question {
    let text: String
    let answer: String
    
    init(q: String, a:String) {
        text = q
        answer = a
    }
}

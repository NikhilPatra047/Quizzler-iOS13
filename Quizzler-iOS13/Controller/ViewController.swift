//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
 
    var quiz_brain = quizBrain()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItright = quiz_brain.checkAnswer(userAnswer)
        
        if (userGotItright) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
       
        quiz_brain.getNextQuestion()
        
     DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
         self.updateUI()
    }
        
//        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
}
    
   @objc func updateUI() {
        progressBar.progress = quiz_brain.getProgress()
        questionText.text = quiz_brain.getQuestionText()
        scoreLabel.text = "score: \(quiz_brain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}



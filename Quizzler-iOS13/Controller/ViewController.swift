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
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    var quizObject = quizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        updateQuestion()
        updateScore()
        updateProgressBar()
        
        
        //questionText.value(forKey: "nothing")
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswerRightorWrong = quizObject.getCorrectValue(sender.currentTitle!)
        if userAnswerRightorWrong {
            sender.backgroundColor = UIColor.green
            
            
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
        
        updateScore()
        updateProgressBar()
        
        
        
        
    }
    @objc func updateQuestion()  {
        questionText.text = quizObject.getNextQuestion()
        trueButton.backgroundColor = .none
        falseButton.backgroundColor = .none
    }
    func updateScore() {
        scoreLabel.text = quizObject.getScore()
        
        
        
    }
    func updateProgressBar()  {
        let progressValue = quizObject.getProgressValue()
        progressBar.setProgress(progressValue, animated: false)
        print(progressValue)
    }

}


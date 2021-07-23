//
//  ViewController.swift
//  Quiz
//
//  Created by 春水碧于天 on 2021/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLable: UILabel!
    @IBOutlet var answerLable: UILabel!
    
    let questions: [String] = ["From what is cognac made",
        "what is 7 + 7",
        "what is capital of Vermont?"]
    let answers:[String] = ["Grapes",
                            "14",
                            "Montepelier"
    ]
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLable.text = questions[currentQuestionIndex]
    }

    @IBAction func showNextQuestion(sender: AnyObject){
        currentQuestionIndex+=1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question = questions[currentQuestionIndex]
        questionLable.text = question
        answerLable.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer = answers[currentQuestionIndex]
        answerLable.text = answer
    }
}


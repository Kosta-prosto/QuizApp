//
//  DetailAnswersController.swift
//  QuizApp
//
//  Created by Константин Булышев on 04.05.2021.
//

import UIKit

class DetailAnswersController: UIViewController {
    
    @IBOutlet var titleNavigation: UINavigationItem!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var flagImage: UIImageView!
    @IBOutlet var answersLabel: [UILabel]!
    @IBOutlet var answerButton: UIButton!
    
    var selectedQuestions: [Question]!
    var currentQuestion: Int!
    var score: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        for label in answersLabel {
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 20
        }

        answerButton.layer.cornerRadius = 20
        answerButton.isHidden = false
        showAnswers()

    }
    
    private func showAnswers() -> Void {
        flagImage.isHidden = true
        let question = selectedQuestions[currentQuestion]
        titleNavigation.title = "Вопрос № \(currentQuestion + 1)"
        questionLabel.text = question.text
        if question.text == "Какому государству принадлежит данный флаг?" {
            flagImage.image = UIImage(named: "Флаг")
            flagImage.isHidden = false
            flagImage.layer.cornerRadius = 20
        }
        for (label, answer) in zip(answersLabel, question.answers) {
            label.text = answer.text
            label.isHidden = false
        }
    }
    
    private func checkAnswer() -> Void {
        let answers = selectedQuestions[currentQuestion].answers
        for (label, answer) in zip(answersLabel, answers) {
            if label.text == answer.text && !answer.status {
                label.isHidden = true
            } else {
                label.isHidden = false
            }
        }
        currentQuestion += 1
    }

    @IBAction func pressedAswersButton(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Узнать ответ":
            
            sender.setTitle("Следующий вопрос", for: .normal)
            checkAnswer()
        case "Следующий вопрос":
            sender.setTitle("Узнать ответ", for: .normal)
            showAnswers()
        default:
            break
        }
    }
}


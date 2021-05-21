//
//  FirstTourController.swift
//  QuizApp
//
//  Created by Константин Булышев on 30.04.2021.
//



// попробовать установить переход через NavigationController
import UIKit

class FirstTourController: UIViewController {
    
    @IBOutlet var titleNavigation: UINavigationItem!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var flagImage: UIImageView!
    @IBOutlet var buttonsForAnswer: [UIButton]!
    @IBOutlet var nextTourButton: UIButton!
    @IBOutlet var detailAnswersButton: UIBarButtonItem!
    
    let questionInTour = 6
    let questions = Question.getQuestions().shuffled()
  

    var selectedQuestions: [Question] = []
    var score = 0
    var currentQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        for button in buttonsForAnswer {
            button.layer.cornerRadius = 20
            button.titleLabel?.textAlignment = .center
            button.titleLabel?.numberOfLines = 0
        }
        
        nextTourButton.isHidden = true
        currentQuestion += 1
        askQuestion()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailAnswersController else { return }
        detailVC.selectedQuestions = self.selectedQuestions
        detailVC.currentQuestion = self.currentQuestion
        detailVC.score = self.score
    }
    
    private func askQuestion() -> Void {
        
        titleNavigation.title = "Вопрос № \(currentQuestion)"
        flagImage.isHidden = true
        let question = questions[(currentQuestion - 1)]
        selectedQuestions.append(question)
        print("Вопрос '\(question.text)' помещен в массив под индексом \(currentQuestion - 1)")
        questionLabel.text = question.text
        if questionLabel.text == "Какому государству принадлежит данный флаг?" {
            flagImage.image = UIImage(named: "Флаг")
            flagImage.isHidden = false
            flagImage.layer.cornerRadius = 20
        }
        for (button, answer) in zip(buttonsForAnswer, question.answers) {
            button.setTitle(answer.text, for: .normal)
        }
    }
    
    private func checkAnswer(userAnswer: UIButton,
                             answers: [Answer]) -> Void {
        let answers = selectedQuestions[currentQuestion - 1].answers
        for answer in answers {
            if userAnswer.titleLabel?.text == answer.text &&
                answer.status {
                score += 1
            }
        }
    }
    
    private func hideSubviews() -> Void {
        flagImage.isHidden = true
        titleNavigation.title = nil
        
        for button in buttonsForAnswer {
            button.isHidden = true
        }
    }
    
    private func result() -> Void {
        if currentQuestion == questionInTour {
            detailAnswersButton.title = "Ответы"
            hideSubviews()
            currentQuestion = 0
            var endingOfTheWord = ""
            
            switch score {
            case 1:
                endingOfTheWord = "балл"
            case 2...4:
                endingOfTheWord = "балла"
            case 0, 5...6:
                endingOfTheWord = "баллов"
            default:
                break
            }
            questionLabel.text = "По итогам первого тура Вы набрали \(score) \(endingOfTheWord)"
            nextTourButton.layer.cornerRadius = 20
            nextTourButton.isHidden = false
        } else {
            currentQuestion += 1
            askQuestion()
        }
    }
    
    @IBAction func chooseAnswer(_ sender: UIButton) {
        checkAnswer(userAnswer: sender, answers: selectedQuestions[currentQuestion - 1].answers)
        result()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    @IBOutlet var titleNavigation: UINavigationItem!
//    @IBOutlet var questionLabel: UILabel!
//    @IBOutlet var flagImage: UIImageView!
//    @IBOutlet var buttonsForAnswer: [UIButton]!
//
//    var score = 0
//    var currentQuestion: Int = 0
//    var answers: [Answer]!
//
//    let questionsInTour = 6
//    let questions = Question.getQuestions().shuffled()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        flagImage.isHidden = true
//        titleNavigation.title! = "Вопрос № \(currentQuestion + 1)"
//
//        for button in buttonsForAnswer {
//            button.layer.cornerRadius = 20
//        }
//
//        for question in 1...questionsInTour {
//            let question = questions[question]
//            askQuestion(question: question)
//            if questionLabel.text == "Какому государству принадлежит данный флаг?" {
//                flagImage.image = UIImage(named: "Флаг")
//                flagImage.isHidden = false
//            }
//            checkAnswer(userAnswer: <#T##UIButton#>)
//        }
//        questionLabel.text = "Ваш результат: \(score) баллов"
//    }
//
//    private func askQuestion(question: Question) -> Void {
//        questionLabel.text = question.text
//        for (button, answer) in zip(buttonsForAnswer, question.answers) {
//            button.setTitle("\(answer.text)", for: .normal)
//        }
//        answers = question.answers
//    }
//
//    private func checkAnswer(userAnswer: UIButton) -> Void {
//        for answer in answers {
//            if userAnswer.titleLabel?.text! == answer.text &&
//                answer.status {
//                score += 1
//            }
//            flagImage.isHidden = true
//            currentQuestion += 1
//        }
//    }
//
//
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



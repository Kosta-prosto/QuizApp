//
//  ViewController.swift
//  QuizApp
//
//  Created by Константин Булышев on 30.04.2021.
//

import UIKit

class StartScene: UIViewController {
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
    }


    @IBAction func goToFisrtTour(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let firstTourVC = storyboard.instantiateViewController(identifier: "firstTour") as? FirstTourController else { return }
        navigationController?.pushViewController(firstTourVC, animated: true)
    }
}


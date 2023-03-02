//
//  ViewController.swift
//  Project-2(Day19-21)
//
//  Created by Yusuf Can Bircan on 27.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    private var countries = [String]()
    private var score: Int = 0
    private var correctAnswer: Int = 0
    private var gameoverCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "poland", "italy", "monaco", "russia", "spain", "nigeria", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }
    
    private func askQuestion() {
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        title = "\(countries[correctAnswer].uppercased()) - \(score)"
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        if sender.tag == correctAnswer {
            score += 1
        } else {
            score -= 1
        }
        
        
        if gameoverCounter == 10 {
            let ac = UIAlertController(
                title: "Game Over",
                message: "Your score is \(score)",
                preferredStyle: .alert
            )
            
            ac.addAction(UIAlertAction(
                title: "Try Again",
                style: .default,
                handler: { action in
                    self.score = 0
                    self.askQuestion()
                }
            ))
            
            present(ac, animated: true)
            
            gameoverCounter = 0
        } else {
            askQuestion()
            gameoverCounter += 1
        }
        
        
    }
    
}


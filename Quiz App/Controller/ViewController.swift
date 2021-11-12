//
//  ViewController.swift
//  Quiz App
//
//  Created by Matthew  Morgan on 10/28/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
    var quizbrain = QuizBrain()
    //creating object to integrate model and view controller
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()   // calling a function
    }

    @objc func updateUI(){
        
        questions.text = quizbrain.getQuestion()
        
        trueButton.backgroundColor = UIColor.green
        falseButton.backgroundColor = UIColor.red
        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        //check if the user input is actually the correct answer
        //change the question number
        
        let userInput = sender.currentTitle!
        
        let checkAnswer = quizbrain.checkAnswer(userInput)

        if checkAnswer == true {
            
            sender.backgroundColor = UIColor.green
            
        }
        else {
            
            sender.backgroundColor = UIColor.red
        }
        
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        updateUI()
    }
    
}

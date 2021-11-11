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
    
    // 2D array - two dimensional array
    var questionBank = [["5  + 3 = 9", "False"],
                        ["9 - 2 = 8", "False"],
                        ["2 + 3 = 5", "True"],
                        ["3 + 4 = 7","True"]]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()   // calling a function
    }

    @objc func updateUI(){
        
        questions.text = questionBank[questionNumber][0]
        
        trueButton.backgroundColor = UIColor.green
        falseButton.backgroundColor = UIColor.red
        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        //check if the user input is actually the correct answer
        //change the question number
        
        let userInput = sender.currentTitle!

        if userInput == questionBank[questionNumber][1]{
            
            sender.backgroundColor = UIColor.green
            
        }
        else {
            
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < questionBank.count{
        
            questionNumber += 1
        
        }
        
        else{
            
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        updateUI()
    }
    
}

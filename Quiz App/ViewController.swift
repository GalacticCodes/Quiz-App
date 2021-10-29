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

    func updateUI(){
        
        questions.text = questionBank[0][0]
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        
}


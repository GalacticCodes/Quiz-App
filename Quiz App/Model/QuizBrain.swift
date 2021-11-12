//
//  QuizBrain.swift
//  Quiz App
//
//  Created by Matthew  Morgan on 11/12/21.
//

import Foundation

struct QuizBrain {
    
    var questionBank = [
    
    Questions(text: "5  + 3 = 9", answer: "False"),
    Questions(text: "9 - 2 = 8", answer: "False"),
    Questions(text: "2 + 3 = 5", answer: "True"),
    Questions(text: "3 + 4 = 7", answer: "True")
    
    ]
     
    var questionNumber = 0
    
    //create a function for displaying question text
    //1.Define 2. Number of Parameters 3. Return Type -> string 4. return 5. calling
    func getQuestion() -> String {
        
        return questionBank[questionNumber].text
        
        
    }
    
    
    func checkAnswer(_ userInput : String) -> Bool{
        
        if userInput == questionBank[questionNumber].answer {
            
            return true
        }
        
        else {
            
            return false
        }
        
    }
    
    mutating func nextQuestion () {
        
        if questionNumber + 1 < questionBank.count{
        
            questionNumber += 1
        
        }
        
        else{
            
            questionNumber = 0
        }
        
    }
}

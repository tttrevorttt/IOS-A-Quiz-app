//
//  ViewController.swift
//  QuizA+
//
//  Created by Trevor on 5/1/19.
//  Copyright © 2019 Trevor Gorham. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    
    var pickedAnswer : Int = 0
    let allQuestions = QuestionBank()
    var questionNumber : Int = 1
    var countCorrectAnswers : Int = 0
    var progress : Float = 0.1
    var Score : Int = 0
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressBar.progress = progress
        newQuestion()
    }

   
   
    
    
    @IBAction func BButtonPress(_ sender: AnyObject) {
     
        //if sender.tag == 1
        switch sender.tag {
        case 1:
            pickedAnswer = 0
        case 2:
            pickedAnswer = 1
        case 3:
            pickedAnswer = 2
        case 4:
            pickedAnswer = 3
            
        default:
            print()
        }
        print(pickedAnswer)
        
        checkAnswer()
         questionNumber = questionNumber + 1
        updateUI()
        
    }
    func updateUI(){
        
        newQuestion()
        progress = progress + 0.1
        progressBar.progress = progress
        
    }
    
    
    func newQuestion(){
        let testlength = allQuestions.list.count
        if questionNumber < testlength {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            endQuiz()
        }
    }
    
    func endQuiz(){

        let dog: Float = Float(allQuestions.list.count)
        let cat: Float = Float(countCorrectAnswers)
        let score: Float =  (cat/dog) * 100
        let precent: Int = Int(score)
        Score = precent
        
        
        
        let alert = UIAlertController(title: "Quiz Over", message: "Your score is: \(precent)%", preferredStyle: .alert)
        
        let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in self.startOver()})
        let ViewResults = UIAlertAction(title: "Study Quiz", style: .default, handler: { (UIAlertAction) in self.loadResults()})
        
      
        
        
        alert.addAction(restartAction)
        alert.addAction(ViewResults)
        
        present(alert, animated: true, completion: nil)
       
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC = segue.destination as! ResultsViewController
        VC.Precent = String(Score)
      
        
    }
    func startOver() {
        questionNumber = 0
        countCorrectAnswers = 0
        progress = 0.0
        updateUI()
        
    }
    func loadResults(){
        startOver()
        performSegue(withIdentifier: "score", sender: self)
        
    }
    
    func checkAnswer(){
         let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == [pickedAnswer]{
            countCorrectAnswers = countCorrectAnswers + 1
            
            
        }
        else{
            
        }
        
    }


}


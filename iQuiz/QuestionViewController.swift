//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Victor Abiscula on 29/02/24.
//

import UIKit

class QuestionViewController: UIViewController {
  
    var points = 0
    var questionNumber = 0
  
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var respsBtn: [UIButton]!
  
    @IBAction func pressRespBtn(_ sender: UIButton) {
      let userisCorrect = questions[questionNumber].correctAnswer == sender.tag
      
      if(userisCorrect) {
        points += 1
        sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
      } else {
        sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
      }
      
      if questionNumber < questions.count - 1 {
        questionNumber += 1
        questionConfig()
      }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
        questionConfig()
    }
  
  func layoutConfig() {
      navigationItem.hidesBackButton = true
      questionTitleLabel.numberOfLines = 0
      questionTitleLabel.textAlignment = .center
      for button in respsBtn{
        button.layer.cornerRadius = 12.0
      }
    }
  
  func questionConfig() {
    questionTitleLabel.text = questions[questionNumber].title
    for button in respsBtn {
      let btnTitle = questions[questionNumber].responses[button.tag]
      button.setTitle(btnTitle, for: .normal)
      button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
    }
  }
  
  /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

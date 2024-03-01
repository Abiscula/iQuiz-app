//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Victor Abiscula on 29/02/24.
//

import UIKit

class QuestionViewController: UIViewController {
  
    @IBOutlet weak var questionTitleLabel: UILabel!
  
  
    @IBOutlet var respsBtn: [UIButton]!
    
    @IBAction func pressRespBtn(_ sender: UIButton) {
      print(sender.tag)
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
    }
  
  func layoutConfig() {
      navigationItem.hidesBackButton = true
    
      for button in respsBtn{
        button.layer.cornerRadius = 12.0
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

//
//  ViewController.swift
//  iQuiz
//
//  Created by Victor Abiscula on 28/02/24.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var quizBtn: UIButton!
  
  @IBAction func pressBtn(_ sender: Any) {
    print("O botao foi pressionado")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    layoutConfig()
  }
  
  func layoutConfig() {
    navigationItem.hidesBackButton = true
    quizBtn.layer.cornerRadius = 12.0
  }
  
}

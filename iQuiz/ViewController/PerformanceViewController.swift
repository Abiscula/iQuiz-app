//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Victor Abiscula on 07/03/24.
//

import UIKit

class PerformanceViewController: UIViewController {
  
  var points: Int?

  @IBOutlet weak var labelResult: UILabel!
  
  
  @IBOutlet weak var labelPercent: UILabel!
  
  
  @IBOutlet weak var restartBtn: UIButton!
  
  
  override func viewDidLoad() {
      super.viewDidLoad()
      layoutConfig()
      perfomanceConfig()
  }
  
  func layoutConfig() {
    navigationItem.hidesBackButton = true
    restartBtn.layer.cornerRadius = 12.0
  }
  
  func perfomanceConfig() {
    guard let points = points else { return }
    labelResult.text = "Você acertou \(points) de \(questions.count) questões"
    let percent = (points * 100) / questions.count
    labelPercent.text = "Percentual de acerto: \(percent)%"
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

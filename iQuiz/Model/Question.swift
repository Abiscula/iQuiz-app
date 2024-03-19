//
//  Question.swift
//  iQuiz
//
//  Created by Victor Abiscula on 06/03/24.
//

import Foundation

struct Question {
  var title: String
  var responses: [String]
  var correctAnswer: Int
}

let questions: [Question] = [
  Question(title: "Quem é o capitão dos Piratas do Chapéu de Palha?",
           responses: ["Zoro", "Luffy", "Nami"],
           correctAnswer: 1),
  Question(title: "Qual é o nome da espada de Roronoa Zoro?",
           responses: ["Sandai Kitetsu", "Shusui", "Nidai Kitetsu"],
           correctAnswer: 1),
  Question(title: "Quem é o arqueólogo da tripulação dos Piratas do Chapéu de Palha?",
           responses: ["Robin", "Franky", "Sanji"],
           correctAnswer: 0),
  Question(title: "Qual é o nome da fruta do diabo que Luffy comeu?",
           responses: ["Hito Hito no Mi", "Mera Mera no Mi", "Gomu Gomu no Mi"],
           correctAnswer: 2),
  Question(title: "Qual é o nome do navio dos Piratas do Chapéu de Palha?",
           responses: ["Going Merry", "Thousand Sunny", "Red Force"],
           correctAnswer: 1),
  Question(title: "Quem é o irmão mais velho de Luffy?",
           responses: ["Ace", "Sabo", "Shanks"],
           correctAnswer: 0),
  Question(title: "Qual é o nome do animal de estimação de Chopper?",
           responses: ["Bepo", "Tony Tony Chopper", "Pappag"],
           correctAnswer: 1),
  Question(title: "Qual é o nome da ilha onde Luffy nasceu?",
           responses: ["Water 7", "Loguetown", "Foosha Village"],
           correctAnswer: 2),
]

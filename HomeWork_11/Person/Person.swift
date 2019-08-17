//
//  Person.swift
//  HomeWork_11
//
//  Created by MAC OS  on 13.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import Foundation

struct Person {
  let name: String
}

let names = ["Oleg", "Nikolay", "Natalia", "Galina", "Max", "Oleg", "Daniil", "Maria", "Greg", "Den","Vadim"]

extension Person {
  
  // MARK: - Create random Person
  
  static func generatePersons() -> [Person] {
    var tempPersons: [Person] = []
    let randomNumber = Int.random(in: 15..<30)
    for _ in 0..<randomNumber {
      let nameRandom = Int.random(in: 0..<names.count)
      let name = names[nameRandom]
      let person = Person(name: name)
      tempPersons.append(person)
    }
    return tempPersons
  }
  
}



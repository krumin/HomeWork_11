//
//  Order.swift
//  HomeWork_11
//
//  Created by MAC OS  on 14.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import Foundation

//создание класса с опциональными значениями
class Order {
  var person: Person?
  var coffee: CoffeeType?
  var size: CupSize?
  var sugar: Int?
  var ownCup: Bool?
  
  init(person: Person? = nil, coffee: CoffeeType? = nil, size: CupSize? = nil, sugar: Int? = nil, ownCup: Bool? = nil) {
    self.person = person
    self.coffee = coffee
    self.size = size
    self.sugar = sugar
    self.ownCup = ownCup
  }
  
  func calculatePrice() -> String {
    guard let coffee = coffee, let size = size else { return "" }
    
    let price: Float
    switch coffee {
    case .irish:
      switch size {
      case .small: price = 1.2
      case .medium: price = 1.5
      case .big: price = 1.8
      }
    case .americano:
      switch size {
      case .small: price = 1.5
      case .medium: price = 1.8
      case .big: price = 2
      }
    case .bicerin:
      switch size {
      case .small: price = 1.3
      case .medium: price = 1.4
      case .big: price = 1.6
      }
    case .glasse:
      switch size {
      case .small: price = 1.8
      case .medium: price = 2
      case .big: price = 2.3
      }
    case .doppio:
      switch size {
      case .small: price = 1.4
      case .medium: price = 1.6
      case .big: price = 1.8
      }
    case .viennaCoffee:
      switch size {
      case .small: price = 2.5
      case .medium: price = 3
      case .big: price = 3.3
      }
    case .cappuccino:
      switch size {
      case .small: price = 0.8
      case .medium: price = 1
      case .big: price = 1.3
      }
    case .latteMacchiato:
      switch size {
      case .small: price = 1
      case .medium: price = 1.3
      case .big: price = 1.6
      }
    case .latte:
      switch size {
      case .small: price = 1.8
      case .medium: price = 2
      case .big: price = 2.2
      }
    case .longhi:
      switch size {
      case .small: price = 4
      case .medium: price = 4.2
      case .big: price = 4.5
      }
    case .mocha:
      switch size {
      case .small: price = 2.5
      case .medium: price = 2.8
      case .big: price = 3.1
      }
    case .raf:
      switch size {
      case .small: price = 2.1
      case .medium: price = 2.3
      case .big: price = 2.5
      }
    case .ristretto:
      switch size {
      case .small: price = 5
      case .medium: price = 5.2
      case .big: price = 5.4
      }
    case .flatwhite:
      switch size {
      case .small: price = 4.1
      case .medium: price = 4.3
      case .big: price = 4.5
      }
    case .espresso:
      switch size {
      case .small: price = 1.6
      case .medium: price = 1.8
      case .big: price = 2
      }
      
    //default: price = 0
      
    }
    
    var finalPrice = price
    if let unwrappedOwnCup = ownCup {
      if unwrappedOwnCup == true {
        finalPrice -= 0.2
      }
    }
    return "\(finalPrice)"
  }
}



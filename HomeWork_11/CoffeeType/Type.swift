//
//  CoffeeType.swift
//  HomeWork_11
//
//  Created by MAC OS  on 15.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import Foundation
import UIKit

enum CoffeeType: CaseIterable {
  case irish
  case americano
  case bicerin
  case glasse
  case doppio
  case viennaCoffee
  case cappuccino
  case latteMacchiato
  case latte
  case longhi
  case mocha
  case raf
  case ristretto
  case flatwhite
  case espresso
  
  var title: String {
    switch self {
    case .irish:
      return "Айриш"
    case .americano:
      return "Американо"
    case .bicerin:
      return "Бичерин"
    case .glasse:
      return "Гляссе"
    case .doppio:
      return "Доппио"
    case .viennaCoffee:
      return "Кофе по Венски"
    case .cappuccino:
      return "Капучино"
    case .latteMacchiato:
      return "Латте макиато"
    case .latte:
      return "Латте"
    case .longhi:
      return "Лунго"
    case .mocha:
      return "Мокко"
    case .raf:
      return "Раф"
    case .ristretto:
      return "Ристретто"
    case .flatwhite:
      return "Флетуайт"
    case .espresso:
      return "Эспрессо"
      
    }
  }
  
  var image: UIImage {
    switch self {
    case .irish:
      return UIImage(named: "Айриш.jpg")!
    case .americano:
      return UIImage(named: "Американо.jpg")!
    case .bicerin:
      return UIImage(named: "Бичерин.jpg")!
    case .glasse:
      return UIImage(named: "Гляссе.jpg")!
    case .doppio:
      return UIImage(named: "Доппио.jpg")!
    case .viennaCoffee:
      return UIImage(named: "Кофе по Венски.jpg")!
    case .cappuccino:
      return UIImage(named: "Капучино.jpg")!
    case .latteMacchiato:
      return UIImage(named: "Латте макиато.jpg")!
    case .latte:
      return UIImage(named: "Латте.jpg")!
    case .longhi:
      return UIImage(named: "Лунго.jpg")!
    case .mocha:
      return UIImage(named: "Мокко.jpg")!
    case .raf:
      return UIImage(named: "Раф.jpg")!
    case .ristretto:
      return UIImage(named: "Ристретто.jpg")!
    case .flatwhite:
      return UIImage(named: "Флетуайт.jpg")!
    case .espresso:
      return UIImage(named: "Эспрессо.jpg")!
    }
  }
}



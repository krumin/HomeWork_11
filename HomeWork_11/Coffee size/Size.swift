//
//  CoffeeSize.swift
//  HomeWork_11
//
//  Created by MAC OS  on 15.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import Foundation

enum CupSize: Int {
  case small
  case medium
  case big
  
  var size: String {
    switch self {
    case .small: return "250"
    case .medium: return "350"
    case .big: return "500"
    }
  }
}

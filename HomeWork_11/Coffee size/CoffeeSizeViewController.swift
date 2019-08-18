//
//  CoffeeSizeViewController.swift
//  HomeWork_11
//
//  Created by MAC OS  on 13.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import UIKit

class CoffeeSizeViewController: UIViewController {
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var sizeSegmentedControl: UISegmentedControl!
  @IBOutlet weak var label: UILabel!
  
  var order: Order?
  let settingsViewControllerSegue = "settingsSegue"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    didSelectSegmentControl()
    
    if let coffee = order?.coffee {
      imageView.image = coffee.image
      title = coffee.title
    }
  }
  
  func didSelectSegmentControl() {
    let indexOfCoffeeSize = sizeSegmentedControl.selectedSegmentIndex
    guard let cupSize = CupSize(rawValue: indexOfCoffeeSize) else {
      return
    }
    label.text = "Selected \(cupSize.size) ml"
  }
  
  // MARK: - Action
  
  @IBAction func actionSegmentedControl(_ sender: UISegmentedControl) {
    didSelectSegmentControl()
  }
  
  @IBAction func saveAction(_ sender: UIBarButtonItem) {
    let indexOfCoffeeSize = sizeSegmentedControl.selectedSegmentIndex
    // Int to case enum Size
    let sizeCase = CupSize(rawValue: indexOfCoffeeSize) ?? .big
    
    if let order = order {
      order.size = sizeCase
      self.order = order
      performSegue(withIdentifier: settingsViewControllerSegue, sender: nil)
    } else {
      print("кофе не выбрано")
    }
  }
  
  // MARK: - Navigation
  // Пробрасывание size на сл экран
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == settingsViewControllerSegue {
      let destinationVC = segue.destination as! SettingsCoffeeViewController
      destinationVC.order = order
    }
  }
}

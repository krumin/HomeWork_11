//
//  SettingsCoffeeViewController.swift
//  HomeWork_11
//
//  Created by MAC OS  on 14.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import UIKit

class SettingsCoffeeViewController: UIViewController {
  
  @IBOutlet weak var sizeSugarSlider: UISlider!
  @IBOutlet weak var sliderLabelCenter: UILabel!
  @IBOutlet weak var ownCupSwitch: UISwitch!
  
  var order: Order?
  let personViewControllerSegue = "personSegue"
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  // MARK: - Actions
  
  @IBAction func saveAction(_ sender: UIBarButtonItem) {
    if let order = order {
      order.ownCup = ownCupSwitch.isOn
      order.sugar = Int(sizeSugarSlider.value)
      self.order = order
      performSegue(withIdentifier: personViewControllerSegue, sender: nil)
    } else {
      print("кружка и сахар не выбрано")
    }
  }
  
  @IBAction func sugarSliderAction(_ sender: UISlider) {
    sliderLabelCenter.text = "\(Int(sender.value))"
  }
  
  // MARK: - Navigation
  // Пробрасывание sugar and ownCup на сл экран
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == personViewControllerSegue {
      let destinationVC = segue.destination as! PersonTableViewController
      destinationVC.order = order
    }
  }
}

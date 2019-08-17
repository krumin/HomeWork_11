//
//  ResultTableViewController.swift
//  HomeWork_11
//
//  Created by MAC OS  on 14.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import UIKit

class ResultTableViewController: UITableViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var coffeeLabel: UILabel!
  @IBOutlet weak var sizeLabel: UILabel!
  @IBOutlet weak var sugarLabel: UILabel!
  @IBOutlet weak var ownCupLabel: UILabel!
  @IBOutlet weak var toPayLabel: UILabel!
  
  var order: Order?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    guard let unwrappedOrder = order else {
      return
    }
    makeOrder(order: unwrappedOrder)
  }
  
  func makeOrder(order: Order) {
    nameLabel.text = order.person?.name
    coffeeLabel.text = order.coffee?.title
    sizeLabel.text = order.size?.size
    if let sugar = order.sugar {
      sugarLabel.text = "\(sugar) mg"
    }
    if let ownCup = order.ownCup {
      if ownCup == true {
        ownCupLabel.text = "Да"
      } else {
        ownCupLabel.text = "Нет"
      }
    }
    toPayLabel.text = "$ \(order.calculatePrice())"
  }
  
  // MARK: - Method create alertController
  
  func showAlert(title: String, message: String, arrayActions: [UIAlertAction]) {
    let alertController = UIAlertController(
      title: title,
      message: message,
      preferredStyle: .alert
    )
    
    for action in arrayActions {
      alertController.addAction(action)
    }
    
    self.present(alertController, animated: true, completion: nil)
  }
  
  
  // MARK: - Action
  
  @IBAction func confirmAction(_ sender: UIButton) {
    let title = "Coffee order"
    let message = "Подтверждение заказа"
    let actionYes = UIAlertAction(title: "Да", style: .default) { [weak self] _ in
      print("Заказ подтвержден")
      self?.navigationController?.popToRootViewController(animated: true)
    }
    let actionNo = UIAlertAction(title: "Нет", style: .cancel) { _ in
      print("Заказ отменен")
    }
    showAlert(title: title, message: message, arrayActions: [actionYes, actionNo])
  }  
}

//
//  CoffeeTypeTableViewController.swift
//  HomeWork_11
//
//  Created by MAC OS  on 13.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import UIKit
import Foundation

class CoffeeTypeTableViewController: UITableViewController {
  
  let order = Order()
  let data = CoffeeType.allCases
  let sizeViewControllerSegue = "coffeeSizeSegue"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  // MARK: - Data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
//  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    let coffee = data[indexPath.row]
//    order.coffee = coffee
//  }
  
  //создание ячейки
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let identifier = "Cell"
    let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! CoffeeTableViewCell
    let coffee = data[indexPath.row]
    cell.coffeeImageView.image = coffee.image
    cell.nameLabel.text = coffee.title
    
    return cell
  }
  
  // MARK: - Navigation
  // Пробрасывание coffee на сл экран
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == sizeViewControllerSegue {
      if let indexPath = tableView.indexPathForSelectedRow {
        order.coffee = data[indexPath.row]
        let destinationVC = segue.destination as! CoffeeSizeViewController
        destinationVC.order = order
      }
    }
  }
}

//
//  PersonTableViewController.swift
//  HomeWork_11
//
//  Created by MAC OS  on 13.08.2019.
//  Copyright © 2019 MAC OS . All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
  
  var order: Order?
  var persons = Person.generatePersons()
  let resultsViewControllerSegue = "resultsSegue"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // MARK: - Create refreshControl
    
    let refreshControl = UIRefreshControl()
    refreshControl.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
    tableView.refreshControl = refreshControl
  }
  
  // MARK: - Method for refreshControl
  
  @objc func refreshAction() {
    persons.shuffle()
    tableView.reloadData()
    tableView.refreshControl?.endRefreshing()
  }
  
  
  // MARK: - Data source
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return persons.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let identifier = "Cell"
    let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! PersonTableViewCell
    let person = persons[indexPath.row]
    cell.textLabel?.text = person.name
    return cell
  }
  
  // MARK: - Navigation
  // пробрасывание person на сл экран
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == resultsViewControllerSegue {
      guard let indexPath = tableView.indexPathForSelectedRow,
        let order = order else { return }
      
      let person = persons[indexPath.row]
      order.person = person
      let destinationVC = segue.destination as! ResultTableViewController
      destinationVC.order = order
    }
  }
}

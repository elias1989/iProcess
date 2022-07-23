//
//  UPanelController.swift
//  iProcess
//
//  Created by Joseph on 16.07.2022.
//

import UIKit

class UPanelController: UIViewController {
    
    var taskholder = [
        "Hello world"
    ]

    @IBOutlet weak var userTableView: UITableView!
    @IBOutlet weak var objectiveLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var deadlineLable: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTableView.dataSource = self
        userTableView.delegate = self
    }
    
    
    
    
    @IBAction func newTaskButton(_ sender: Any) {
        
    }
    
    
    
    @IBAction func calendarViewButton(_ sender: Any) {
        
    }
    
    
    @IBAction func sortByButton(_ sender: Any) {
        
    
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}


extension UPanelController: UITableViewDataSource, UITableViewDelegate  {
    func
    numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskholder.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        return cell
        }
    }

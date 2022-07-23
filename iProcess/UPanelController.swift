//
//  UPanelController.swift
//  iProcess
//
//  Created by Joseph on 16.07.2022.
//

import UIKit

class UPanelController: UIViewController {
    
    @IBOutlet weak var userTableView: UITableView!
    @IBOutlet weak var objectiveLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var deadlineLable: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTableView.dataSource = self
    }
    
    
    
    
    @IBAction func newTaskButton(_ sender: Any) {
        
    }
    
    
    
    @IBAction func calendarViewButton(_ sender: Any) {
        
    }
    
    
    @IBAction func sortByButton(_ sender: Any) {
        
    
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    
    
}


extension UPanelController: UITableViewDataSource {
    func
    numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return  tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        }
    }

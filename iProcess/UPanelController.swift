//
//  UPanelController.swift
//  iProcess
//
//  Created by Joseph on 16.07.2022.
//

import UIKit

class UPanelController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}


extension UPanelController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return  tableView.dequeueReusableCell(withIdentifier: "SomeCell", for: indexPath)
        }
    }

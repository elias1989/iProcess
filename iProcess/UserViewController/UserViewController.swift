//
//  UserViewController.swift
//  iProcess
//
//  Created by ilia Kravets on 03.07.2022.
//

import Foundation
import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    @IBAction func goToUserVC(_ sender: Any) {
        
        //?
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let uPanelController = storyboard?.instantiateViewController(withIdentifier: "UPanelID") as! UPanelController
        uPanelController.modalPresentationStyle = .fullScreen
        
        let login = userTextField.text!
        let password = passTextField.text!
        
        if login == "1" && password == "1" { self.present(uPanelController, animated: true, completion: nil) }
        
        else {
           let alert = UIAlertController(title: "Error", message: "incorrect username or password", preferredStyle: .alert)
            
            // Создаем кнопку для UIAlertController
            
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            //Добавляем кнопку на UIAlertController
    
            alert.addAction(action)
            
            // Показываем UIAlertController
            present(alert, animated: true, completion: nil)
            }
        }
    
}


//extension UserViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return tableView.dequeueReusableCell(withIdentifier: "SomeCell", for: indexPath)
//        }
//}

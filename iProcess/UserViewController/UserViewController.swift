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

    
    
//логин процесс + ошибка в случае неправильных данных- общий вариант, реагирует на любой переход.
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//    let login = userTextField.text!
//    let password = passTextField.text!
//    if login == "1" && password == "1" { return true } else {
//
//
//    // Создаем контроллер
//    let alert = UIAlertController(title: "Error", message: "incorrect username or password", preferredStyle: .alert)
//
//    // Создаем кнопку для UIAlertController
//        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//
//    //Добавляем кнопку на UIAlertController
//    alert.addAction(action)
//
//    // Показываем UIAlertController
//    present(alert, animated: true, completion: nil)
//    return false
//        }
//    }

//конец логин процесса + ошибка в случае неправильных данных.общий вариант, реагирует на любой переход.
 
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
    
    
    
    

        
        
    


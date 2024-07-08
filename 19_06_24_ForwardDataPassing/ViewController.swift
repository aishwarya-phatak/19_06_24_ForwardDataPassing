//
//  ViewController.swift
//  19_06_24_ForwardDataPassing
//
//  Created by Vishal Jagtap on 08/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNametextFiled: UITextField!
    @IBOutlet weak var lastNameTextFiled: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private var reuseIdentifierForSVC = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.firstNametextFiled.text = ""
        self.lastNameTextFiled.text = ""
        self.passwordTextField.text = ""
    }
    
    @IBAction func btnNext(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForSVC) as! SecondViewController
        
        //way 1
//        secondViewController.firstNameContainer = self.firstNametextFiled.text
//        secondViewController.lastNameContainer = self.lastNameTextFiled.text
//        secondViewController.passwordContainer = self.passwordTextField.text
        
        
        //way 2
        secondViewController.userDetailsContaniner?.firstname = self.firstNametextFiled.text!
        secondViewController.userDetailsContaniner?.lastname = self.lastNameTextFiled.text!
        secondViewController.userDetailsContaniner?.password = self.passwordTextField.text!
        
        self.navigationController?.pushViewController(secondViewController,
                                                      animated: true)
    }
}

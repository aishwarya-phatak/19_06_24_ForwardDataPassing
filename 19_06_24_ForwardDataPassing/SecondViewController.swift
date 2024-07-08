//
//  SecondViewController.swift
//  19_06_24_ForwardDataPassing
//
//  Created by Vishal Jagtap on 08/07/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    //way 1
//    var firstNameContainer : String?
//    var lastNameContainer : String?
//    var passwordContainer : String?
    
    var userDetailsContaniner : UserDetails?            //container of model class type
     
    override func viewDidLoad() {
        super.viewDidLoad()
        //initViews()
        initViews2()
    }
    
    func initViews2(){
        self.firstNameLabel.text = userDetailsContaniner?.firstname
        self.lastNameLabel.text = userDetailsContaniner?.lastname
        self.passwordLabel.text = userDetailsContaniner?.password
    }
    
    //way 1
//    func initViews(){
//        self.firstNameLabel.text = firstNameContainer
//        self.lastNameLabel.text = lastNameContainer
//        self.passwordLabel.text = passwordContainer
//    }
    

    @IBAction func btnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
}

//
//  RegisterViewController.swift
//  PlatziSimpleApp
//
//  Created by Inés Rojas on 6/23/17.
//  Copyright © 2017 Inés Rojas. All rights reserved.
//

import Foundation
import UIKit


class RegisterViewController : UITableViewController {
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordFIeld: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    var userName : String?
    var user : String?
    var email : String?
    var password : String?
    
    
    //Mark Actions
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
        
        UserDefaults.standard.setValue("145215", forKey: "userToken")
        UserDefaults.standard.synchronize()
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func textFieldValueChanged(_ sender: UITextField) {
        if (sender.isEqual(userTextField)){
            self.user = userTextField.text
        }
        else if (sender.isEqual(nameField)){
            self.userName = nameField.text
        }
        else if (sender.isEqual(emailField)){
            self.email = emailField.text
        }
        else if (sender.isEqual(passwordFIeld)){
            self.password = passwordFIeld.text
        }
        
        if let userNameOptional = userName, let userOptional = user, let emailOptional = email, let passwordOptional = password, !userNameOptional.isEmpty && !userOptional.isEmpty && !emailOptional.isEmpty && !passwordOptional.isEmpty {
        
            signUpButton.isEnabled = true
        }
        else {
            signUpButton.isEnabled = false
        }
        
    }
    
    
    
    
}

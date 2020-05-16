//
//  RegistrationViewController.swift
//  Lyncv2
//
//  Created by Seah Qi Yan on 4/5/20.
//  Copyright © 2020 Seah Qi Yan. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Check the fields and validate that the data is correct. If everything is correct, this returns nil, else it returns the error message
    func validateFields() -> String? {
        
        //Check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
        }
        
        return nil
    }
    
    @IBAction func SignUpTapped(_ sender: Any) {
        
        //Validate the fields
        
        //Create the user
        
        //Transition to Home Screen
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

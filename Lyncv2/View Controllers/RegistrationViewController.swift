//
//  RegistrationViewController.swift
//  Lyncv2
//
//  Created by Seah Qi Yan on 4/5/20.
//  Copyright © 2020 Seah Qi Yan. All rights reserved.
//

import UIKit
import Firebase

class RegistrationViewController: UIViewController
{
    @IBOutlet weak var firstNameTextField: UITextField!


    @IBOutlet weak var lastNameTextField: UITextField!


    @IBOutlet weak var emailTextField: UITextField!


    @IBOutlet weak var passwordTextField: UITextField!

    
    @IBAction func BacktoHomepage(_ sender: Any) {
        
        performSegue(withIdentifier: "backtologin", sender: self)
        
    }
    
    @IBOutlet weak var signUpButton: UIButton!
//
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Check the fields and validate that the data is correct. If everything is correct, this returns nil, else it returns the error message
    
//---------------------------------------------------------------------------------------------------------
    func validateFields() -> String?
    {
        
        //Check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "Please fill in all fields"
        }
        
        //check if password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if self.isPasswordValid(cleanedPassword) == false
        {
            //Password is not secure enough
            return "Please ensure your password is at least 8 characters, contains a special character and contains a number."
        }
        return nil
    }
//---------------------------------------------------------------------------------------------------------
    
    @IBAction func SignUpTapped(_ sender: Any)
    {//6-o
        //Validate the fields
        let error = validateFields()
        if error != nil
        {//5-o
            let alertController = UIAlertController(title: "ERROR", message: "Please enter at least 8 characters, a special character and a number.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
            
        }//5-c
        else
        {//4-o
            //create cleaned versions of the data
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            //Create the user
            Auth.auth().createUser(withEmail: email, password: password)
            {//3-o
                (result, err) in
                //check for errors
            //---------------------------------------------------------------------------------------------------------
                if err != nil
                {
                    //there was an error creating the user
                    let alertController = UIAlertController(title: "ERROR", message: "Error creating User", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                    self.present(alertController, animated: true, completion: nil)
                }
            //---------------------------------------------------------------------------------------------------------
                else
                {//2-o
                    //user created successfully, now store the first and last name
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["firstname":firstName, "lastname": lastName, "uid":result!.user.uid])
                    {//1-o
                        (error) in
                //---------------------------------------------------------------------------------------------------------
                        if error != nil
                        { let alertController = UIAlertController(title: "ERROR", message: "Error saving user data", preferredStyle: .alert)
                            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                            self.present(alertController, animated: true, completion: nil)
                        }
                //---------------------------------------------------------------------------------------------------------
                        
                    } //1-c
                    
                  // self.transitionToHome()

                }//2-c
            }//3-c
        }//4-c
        
                
        
            //Transition to Home Screen
                        
                
                
    }//6-c
        
    
        
    func isPasswordValid(_ password : String) -> Bool
    {
        let passwordTest = NSPredicate(format: "SELD MATCHES %@","^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }

    
//    func transitionToHome()
//    {
//        if #available(iOS 13.0, *) {
//            let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomePageViewController
//        } else {
//            // Fallback on earlier versions
//        }
//
//        view.window?.rootViewController = homeViewController
//        view.window?.makeKeyAndVisible()
//    }

}




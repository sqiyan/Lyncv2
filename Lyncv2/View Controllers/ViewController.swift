//
//  ViewController.swift
//  Lyncv2
//
//  Created by Seah Qi Yan on 3/1/20.
//  Copyright © 2020 Seah Qi Yan. All rights reserved.
//

import UIKit


@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController {
    

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    

    @IBAction func SignUpTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "homepage", sender: self)
        
    }
    
    @IBOutlet weak var RegisterButton: UIButton!
    
  
    @IBAction func RegisterTapped(_ sender: Any) {
        performSegue(withIdentifier: "registerpage", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}


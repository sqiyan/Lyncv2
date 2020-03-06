//
//  ProfileViewController.swift
//  Lyncv2
//
//  Created by Seah Qi Yan on 10/2/20.
//  Copyright © 2020 Seah Qi Yan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBAction func ReturnProfile(_ sender: Any) {
        performSegue(withIdentifier: "returnprofile", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

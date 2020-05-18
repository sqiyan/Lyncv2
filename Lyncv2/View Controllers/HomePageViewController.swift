//
//  HomePageViewController.swift
//  Lyncv2
//
//  Created by Seah Qi Yan on 10/2/20.
//  Copyright © 2020 Seah Qi Yan. All rights reserved.
//

import UIKit


class HomePageViewController: UIViewController {
    
    
    @IBAction func LogOut(_ sender: Any) {
        performSegue(withIdentifier: "logout", sender: self)
    }
    
    @IBAction func Profile(_ sender: Any) {
        performSegue(withIdentifier: "profile", sender: self)
    }
    
    @IBAction func PersonalityTest(_ sender: Any) {
        performSegue(withIdentifier: "personalitytest", sender: self)
    }
    
    
    @IBAction func Matches(_ sender: Any) {
        performSegue(withIdentifier: "matches", sender: self)
    }
    
    
    @IBAction func Games(_ sender: Any) {
        performSegue(withIdentifier: "games", sender: self)
    }
    
    
    @IBOutlet weak var ProfilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      ProfilePicture.layer.borderWidth = 1
        ProfilePicture.layer.masksToBounds = false
        ProfilePicture.layer.borderColor = UIColor.white.cgColor
        ProfilePicture.layer.cornerRadius = ProfilePicture.frame.height/2
        
        ProfilePicture.clipsToBounds = true
        
        
    }
        
        

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



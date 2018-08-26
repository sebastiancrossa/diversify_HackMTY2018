//
//  HomeScreenVC.swift
//  diversify
//
//  Created by Sebastian Crossa on 8/26/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import Firebase

class HomeScreenVC: UIViewController {
    
    
    @IBOutlet weak var popularButton: UIButton!
    @IBOutlet weak var recommendedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func popularButtonWasPressed(_ sender: Any) {
        if (FBSDKAccessToken.current() != nil) {
            self.performSegue(withIdentifier: "homeToSuccess", sender: self)
        } else {
            self.performSegue(withIdentifier: "homeToFBSign", sender: self)
        }
    }

    @IBAction func recommendedWasPressed(_ sender: Any) {
        if (FBSDKAccessToken.current() != nil) {
            
        } else {
            
        }
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

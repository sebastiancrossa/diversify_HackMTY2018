//
//  HomeScreenVC.swift
//  diversify
//
//  Created by Sebastian Crossa on 8/26/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class HomeScreenVC: UIViewController {
    
    
    @IBOutlet weak var popularButton: UIButton!
    @IBOutlet weak var recommendedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func popularButtonWasPressed(_ sender: Any) {
        
    }

    @IBAction func recommendedWasPressed(_ sender: Any) {
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

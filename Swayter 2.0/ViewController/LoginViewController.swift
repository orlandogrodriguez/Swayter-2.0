//
//  ViewController.swift
//  Swayter 2.0
//
//  Created by Orlando G. Rodriguez on 3/7/18.
//  Copyright © 2018 Worly Software. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // Instance Variables
    private let log: SwayterLog = SwayterLog()
    
    // Outlets
    @IBOutlet weak var oSwayterLogo: UIImageView!
    @IBOutlet weak var oBackgroundBlur: UIVisualEffectView!
    
    
    // Actions
    
    // View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async() {
            self.checkForCurrentUser()
            self.loadInitialUI()
            self.updateUI()
        }
    }
    
    // Helper Functions
    
    // TODO: Add user as function parameter
    func loadInitialUI() {
        log.d(str: "Loading initial UI...")
        var user: String?
        if let currentUser = user {
            log.d(str: "\(user) currently signed in...")
            self.gotoHomeViewController()
            return
        }
        log.d(str: "No user currently signed in. Loading login sequence...")
        UIView.animate(withDuration: 1, animations: {
            self.log.d(str: "Animating logo to top of LoginViewController.")
            self.oSwayterLogo.frame.origin.y = 64
            self.oBackgroundBlur.alpha = CGFloat(1.0)
        }, completion: { (true) in
            self.log.d(str: "Logo animation complete.")
        })
    }
    
    // TODO: Add user as function parameter
    func updateUI() {
        log.d(str: "Updating UI for user: <Insert User Here>")
    }
    
    // TODO: Add user as function parameter
    func checkForCurrentUser() {
        log.d(str: "Checking for current user...")
    }
    
    // TODO: Implement
    func gotoHomeViewController() {
        log.d(str: "Proceeding to Home View Controller...")
    }

}


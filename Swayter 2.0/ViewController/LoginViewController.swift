//
//  ViewController.swift
//  Swayter 2.0
//
//  Created by Orlando G. Rodriguez on 3/7/18.
//  Copyright © 2018 Worly Software. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    // Instance Variables
    private let log: SwayterLog = SwayterLog()
    var contentW: CGFloat!
    var contentH: CGFloat!
    
    // Outlets
    @IBOutlet weak var oSwayterLogo: UIImageView!
    @IBOutlet weak var oBackgroundBlur: UIVisualEffectView!
    @IBOutlet weak var oBackground: UIImageView!
    @IBOutlet weak var oScrollView: UIScrollView!
    
    @IBOutlet weak var oLoginView: UIView!
    @IBOutlet weak var oSignUpView: UIView!
    @IBOutlet weak var oSocialView: UIView!
    
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
    
    // Delegate Method Implementations
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        oBackground.frame.origin.x = CGFloat(scrollView.contentOffset.x) * CGFloat(-0.05)
    }
    
    // Helper Functions
    // TODO: Add user as function parameter
    func loadInitialUI() {
        
        oScrollView.delegate = self
        contentH = view.frame.height
        contentW = view.frame.width
        
        oBackground.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        oBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        oBackground.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        //oBackground.widthAnchor.constraint(equalTo: view.widthAnchor, constant: oBackground.frame.width * CGFloat(1.25)).isActive = true
        
        log.d(str: "Loading initial UI...")
        var user: String?
        if let currentUser = user {
            log.d(str: "\(currentUser) currently signed in...")
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
        
        log.d(str: "Loading scroll view...")
        log.d(str: "Setting up views for the scroll view...")
        oLoginView.frame = CGRect(x: 0, y: 0, width: contentW, height: contentH)
        oSignUpView.frame = CGRect(x: contentW, y: 0, width: contentW, height: contentH)
        oSocialView.frame = CGRect(x: contentW * 2, y: 0, width: contentW, height: contentH)
        oScrollView.contentSize = CGSize(width: contentW * 3, height: contentH - 128 - 20)
        oScrollView.frame = CGRect(x: 0, y: view.frame.maxY - 200, width: contentW, height: contentH)
        
        
        
        
        
        UIView.animate(withDuration: 1, delay: 0.25, options: .curveEaseInOut, animations: {
            self.oScrollView.alpha = 1.0
            self.oScrollView.frame = CGRect(x: 0, y: 120, width: self.contentW, height: self.contentH)

        }, completion: nil)
        
        
        
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


//
//  LoginFormViewController.swift
//  Swayter 2.0
//
//  Created by Orlando G. Rodriguez on 3/14/18.
//  Copyright © 2018 Worly Software. All rights reserved.
//

import UIKit

class LoginFormViewController: UIViewController {

    @IBOutlet weak var oMainView: UIView!
    @IBOutlet weak var oEmailTextField: UITextField!
    @IBOutlet weak var oPasswordTextField: UITextField!
    @IBOutlet weak var oLoginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oEmailTextField.layer.cornerRadius = 11
        oPasswordTextField.layer.cornerRadius = 11
        oMainView.layer.cornerRadius = 22
        oLoginButton.layer.cornerRadius = 22
        
    }

}

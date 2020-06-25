//
//  SignInViewController.swift
//  Jistar
//
//  Created by Icelod on 6/25/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var signInLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet var emailContainerView: UIView!
    
    @IBOutlet var passwordContainerView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBAction func dismissSignInViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI(){
        setupTitleLabel()
        setupEmailField()
        setupPasswordField()
        setupSignInButton()
        setupSignUpButton()
    }

}

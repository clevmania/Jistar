//
//  SignUpViewController.swift
//  Jistar
//
//  Created by Icelod on 6/19/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet var fullNameContainerView: UIView!
    
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet var passwordContainerView: UIView!
    
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    
    @IBAction func dismissController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    func setupUI(){
        setupTitleLabel()
        setupAvatar()
        setupFullNameField()
        setupEmailField()
        setupPasswordField()
        setupSignInButton()
        setupSignUpButton()
    }
}

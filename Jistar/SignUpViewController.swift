//
//  SignUpViewController.swift
//  Jistar
//
//  Created by Icelod on 6/19/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func dismissController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: "tester237@gmail.com", password: "Tester@123") { (authDataResult, error) in
            if error != nil{
                print(error!.localizedDescription)
                return
            }
            
            if let authData = authDataResult{
                let dict : Dictionary<String, Any> = [
                    "uid" : authData.user.uid,
                    "email" : authData.user.email,
                    "profileImageUrl" : "",
                    "status" : "Welcome to Jistar"
                ]
                
                Database.database().reference().child("users")
                    .child(authData.user.uid).updateChildValues(dict) { (error, ref) in
                        if error == nil{
                            print("Done updating user node!!")
                        }
                }
                
            }
        }
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

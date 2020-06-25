//
//  SignInViewController+UI.swift
//  Jistar
//
//  Created by Icelod on 6/25/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

extension SignInViewController {

    // MARK: - UI Manipulations
    
    func setupTitleLabel(){
        let titleText = "Sign In"
        
        let attributedString = NSMutableAttributedString(string: titleText, attributes: [NSAttributedString.Key.font : UIFont.init(name:  "Didot", size: 28)!,NSMutableAttributedString.Key.foregroundColor : UIColor.black]
        )
                
        signInLabel.attributedText = attributedString
    }
    
    func setupEmailField(){
        emailContainerView.layer.borderWidth = 1;
        emailContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        emailContainerView.layer.cornerRadius = 3
        emailContainerView.clipsToBounds = true
        emailTextField.borderStyle = .none
        
        let placeHolderAttrib = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        emailTextField.attributedPlaceholder = placeHolderAttrib
        emailTextField.textColor = UIColor.init(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupPasswordField(){
        passwordContainerView.layer.borderWidth = 1;
        passwordContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        passwordContainerView.layer.cornerRadius = 3
        passwordContainerView.clipsToBounds = true
        passwordTextField.borderStyle = .none
        
        let placeHolderAttrib = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        passwordTextField.attributedPlaceholder = placeHolderAttrib
        passwordTextField.textColor = UIColor.init(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupSignUpButton(){
        let attributeTermsString = NSMutableAttributedString(string: "Don't  have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributesSubTermsText = NSMutableAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor.black])
        
        attributeTermsString.append(attributesSubTermsText)
        signUpButton.setAttributedTitle(attributeTermsString, for: .normal)
    }
    
    func setupSignInButton(){
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        signInButton.backgroundColor = UIColor.black
        signInButton.layer.cornerRadius = 5
        signInButton.clipsToBounds = true
        signInButton.setTitleColor(.white, for: .normal)
    }

}

//
//  ForgotPasswordViewController+UI.swift
//  Jistar
//
//  Created by Icelod on 6/25/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

extension ForgotPasswordViewController{
    
    // MARK: - Implementation goes here
    func setupEmailTextField(){
        emailContainerView.layer.borderWidth = 1;
        emailContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        emailContainerView.layer.cornerRadius = 3
        emailContainerView.clipsToBounds = true
        emailTextField.borderStyle = .none
        
        let placeHolderAttrib = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        emailTextField.attributedPlaceholder = placeHolderAttrib
        emailTextField.textColor = UIColor.init(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupResetButton(){
        resetPasswordButton.setTitle("RESET PASSWORD", for: .normal)
        resetPasswordButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        resetPasswordButton.backgroundColor = UIColor.black
        resetPasswordButton.layer.cornerRadius = 5
        resetPasswordButton.clipsToBounds = true
        resetPasswordButton.setTitleColor(.white, for: .normal)
    }

}

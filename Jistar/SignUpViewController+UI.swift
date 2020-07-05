//
//  SignUpViewController+UI.swift
//  Jistar
//
//  Created by Icelod on 6/19/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

// MARK: - SignUp Extension
extension SignUpViewController {
    func setupTitleLabel(){
        let titleText = "Sign Up"
        
        let attributedString = NSMutableAttributedString(string: titleText, attributes: [NSAttributedString.Key.font : UIFont.init(name:  "Didot", size: 28)!,NSMutableAttributedString.Key.foregroundColor : UIColor.brown]
        )
                
        titleLabel.attributedText = attributedString
    }
    
    func setupAvatar(){
        avatar.layer.cornerRadius = 40
        avatar.clipsToBounds = true
        avatar.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(presentImagePicker))
        avatar.addGestureRecognizer(tapGesture)
    }
    
    @objc func presentImagePicker(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func setupFullNameField(){
        fullNameContainerView.layer.borderWidth = 1;
        fullNameContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        fullNameContainerView.layer.cornerRadius = 3
        fullNameContainerView.clipsToBounds = true
        fullNameTextField.borderStyle = .none
        
        let placeHolderAttrib = NSAttributedString(string: "Full name", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        fullNameTextField.attributedPlaceholder = placeHolderAttrib
        fullNameTextField.textColor = UIColor.init(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
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
    
    func setupSignInButton(){
        let attributeTermsString = NSMutableAttributedString(string: "Already have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributesSubTermsText = NSMutableAttributedString(string: "Sign in", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor.black])
        
        attributeTermsString.append(attributesSubTermsText)
        signinButton.setAttributedTitle(attributeTermsString, for: .normal)
    }
    
    func setupSignUpButton(){
        signupButton.setTitle("Create a New Account", for: .normal)
        signupButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        signupButton.backgroundColor = UIColor.black
        signupButton.layer.cornerRadius = 5
        signupButton.clipsToBounds = true
    }
}

extension SignUpViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imageSelected = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            image = imageSelected
            avatar.image = imageSelected
        }
        
        if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            image = originalImage
            avatar.image = originalImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
}

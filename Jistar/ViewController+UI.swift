//
//  ViewController+UI.swift
//  Jistar
//
//  Created by Icelod on 6/19/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

// MARK: - Views Extension
extension ViewController{
    func setupHeaderTitle(){
        let titleText = titleLabel.text!
        let subTitle = "\n\nLorel ipsum dida opan tilta daramk subu rifi immo sinan mica id"
        
        let attributedString = NSMutableAttributedString(string: titleText, attributes: [NSAttributedString.Key.font : UIFont.init(name:  "Didot", size: 28)!,NSMutableAttributedString.Key.foregroundColor : UIColor.brown]
        )
        
        let attributedSubtitleString = NSMutableAttributedString(string: subTitle, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)]
        )
        
        attributedString.append(attributedSubtitleString)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
        
        titleLabel.numberOfLines = 0
        
        titleLabel.attributedText = attributedString
    }
    
    func setupOrLabel(){
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        orLabel.textColor = UIColor(white: 0, alpha: 0.45)
        orLabel.textAlignment = .center
    }
    
    func setupTermsLabel(){
        let attributeTermsString = NSMutableAttributedString(string: "By Clicking to Create New Account, you've agreed to our terms & condition...", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributesSubTermsText = NSMutableAttributedString(string: "Terms of Service", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        attributeTermsString.append(attributesSubTermsText)
        
        termsOfUseLabel.attributedText = attributeTermsString
        termsOfUseLabel.numberOfLines = 0
    }
    
    func setupFacebookButton(){
        signInWithFacebook.setTitle("Sign In With Facebook", for: .normal)
        signInWithFacebook.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signInWithFacebook.backgroundColor = UIColor(red: 58/255, green: 85/255, blue: 159/255, alpha: 1)
        signInWithFacebook.layer.cornerRadius = 5
        signInWithFacebook.clipsToBounds = true
        signInWithFacebook.setImage(UIImage(named: ""), for: .normal)
        signInWithFacebook.imageView?.contentMode = .scaleAspectFit
        signInWithFacebook.tintColor = .white
        signInWithFacebook.imageEdgeInsets = UIEdgeInsets(top: 12, left: -15, bottom: 12, right: 0)
    }
    
    func setupGoogleButton(){
        signInWithGoogle.setTitle("Sign In With Google", for: .normal)
        signInWithGoogle.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signInWithGoogle.backgroundColor = UIColor(red: 223/255, green: 74/255, blue: 50/255, alpha: 1)
        signInWithGoogle.layer.cornerRadius = 5
        signInWithGoogle.clipsToBounds = true
        signInWithGoogle.setImage(UIImage(named: ""), for: .normal)
        signInWithGoogle.imageView?.contentMode = .scaleAspectFit
        signInWithGoogle.tintColor = .white
        signInWithGoogle.imageEdgeInsets = UIEdgeInsets(top: 12, left: -35, bottom: 12, right: 0)
    }
    
    func setupCreateAccount(){
        createAccountButton.setTitle("Create a New Account", for: .normal)
        createAccountButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        createAccountButton.backgroundColor = UIColor.black
        createAccountButton.layer.cornerRadius = 5
        createAccountButton.clipsToBounds = true
    }
}

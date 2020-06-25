//
//  ViewController.swift
//  Jistar
//
//  Created by Icelod on 6/19/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var termsOfUseLabel: UILabel!
    @IBOutlet weak var signInWithFacebook: UIButton!
    @IBOutlet weak var signInWithGoogle: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    @IBAction func signinWithGoogle(_ sender: Any) {
    }
    
    @IBAction func createNewAccount(_ sender: Any) {
    }
    
    @IBAction func signinWithFacebook(_ sender: UIButton) {
    }
    
    func setupUI(){
        setupHeaderTitle()
        setupOrLabel()
        setupTermsLabel()
        setupFacebookButton()
        setupGoogleButton()
        setupCreateAccount()
    }
}


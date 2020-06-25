 //
//  ForgotPasswordViewController.swift
//  Jistar
//
//  Created by Icelod on 6/25/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailContainerView: UIView!
    
    @IBOutlet weak var resetPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    @IBAction func dismissForgotPasswordViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func setupUI(){
        setupResetButton()
        setupEmailTextField()
    }

}

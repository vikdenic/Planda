//
//  AuthViewController.swift
//  Planda
//
//  Created by Vik Denic on 12/6/17.
//  Copyright © 2017 nekturlabs. All rights reserved.
//

import UIKit
import FirebaseAuth

class AuthViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    let authStrings = ["Sign Up", "Log In"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSegmentTapped(_ sender: UISegmentedControl) {
        self.loginButton.setTitle(self.authStrings[sender.selectedSegmentIndex], for: .normal)
    }
    
    @IBAction func onLoginTapped(_ sender: UIButton) {
        if self.segmentedControl.selectedSegmentIndex == 0 {
            Auth.auth().createUser(withEmail: self.nameTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                if let error = error {
                    self.showAlert(fromError: error)
                } else {
                    print("created user")
                }
            }
        } else {
            Auth.auth().signIn(withEmail: self.nameTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                if let error = error {
                    self.showAlert(fromError: error)
                } else {
                    print("logged in user")
                }
            }
        }
    }

}

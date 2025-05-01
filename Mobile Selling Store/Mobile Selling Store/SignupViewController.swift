//
//  SignupViewController.swift
//  Project
//
//  Created by Student on 20/01/1947 Saka.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
        @IBOutlet weak var emailTextField: UITextField!
        @IBOutlet weak var passwordTextField: UITextField!
        @IBOutlet weak var confirmPasswordTextField: UITextField!
        @IBOutlet weak var signupButton: UIButton!
        @IBOutlet weak var errorLabel: UILabel!

        override func viewDidLoad() {
            super.viewDidLoad()
            errorLabel.isHidden = true
        }

        @IBAction func signupButtonTapped(_ sender: UIButton) {
            guard let username = usernameTextField.text, !username.isEmpty,
                          let email = emailTextField.text, !email.isEmpty,
                          let password = passwordTextField.text, !password.isEmpty,
                          let confirmPassword = confirmPasswordTextField.text, !confirmPassword.isEmpty else {
                        errorLabel.text = "Please fill in all fields."
                        errorLabel.isHidden = false
                        return
                    }

                    guard password == confirmPassword else {
                        errorLabel.text = "Passwords do not match."
                        errorLabel.isHidden = false
                        return 
                    }
                    UserDefaults.standard.set(username, forKey: "savedUsername")
                    UserDefaults.standard.set(password, forKey: "savedPassword")
                    performSegue(withIdentifier: "Loginpage", sender: nil)
                
        }
        
}

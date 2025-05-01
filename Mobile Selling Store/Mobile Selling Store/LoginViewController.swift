//
//  LoginViewController.swift
//  Mobile Selling Store
//
//  Created by Student on 04/02/1947 Saka.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func showAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let enteredUsername = usernameTextField.text, !enteredUsername.isEmpty,
                      let enteredPassword = passwordTextField.text, !enteredPassword.isEmpty else {
                    return
                }

                let savedUsername = UserDefaults.standard.string(forKey: "savedUsername")
                let savedPassword = UserDefaults.standard.string(forKey: "savedPassword")

                if (enteredUsername == savedUsername && enteredPassword == savedPassword ){
                    performSegue(withIdentifier: "Mainpage", sender: nil)
                } else {
                    showAlert(title: "Login Failed", message: "Invalid username or password.")
                }
    }

}

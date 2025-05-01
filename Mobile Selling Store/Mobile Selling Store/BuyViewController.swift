//
//  BuyViewController.swift
//  Mobile Selling Store
//
//  Created by Student on 06/02/1947 Saka.
//

import UIKit

class BuyViewController: UIViewController {

    var selectedProduct: String?
        var selectedPrice: String?

        @IBOutlet weak var productLabel: UILabel!
        @IBOutlet weak var priceLabel: UILabel!
        @IBOutlet weak var nameTextField: UITextField!
        @IBOutlet weak var addressTextField: UITextField!
        @IBOutlet weak var phoneTextField: UITextField!

        override func viewDidLoad() {
            super.viewDidLoad()
            productLabel.text = selectedProduct
            priceLabel.text = selectedPrice 
        }
    func showAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    func isValidPhone(_ phone: String) -> Bool {
            let phoneRegex = "^[0-9]{10}$"
            return NSPredicate(format: "SELF MATCHES %@", phoneRegex).evaluate(with: phone)
        }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text, !name.isEmpty,
              let address = addressTextField.text, !address.isEmpty,
              let phone = phoneTextField.text, !phone.isEmpty else {
            showAlert(title: "Error", message: "Please fill all details.")
            return
        }
        
        if !isValidPhone(phone) {
            showAlert(title: "Invalid Phone", message: "Please enter a valid 10-digit phone number.")
            return
        }
        let summary = """
                Order placed successfully!

                Name: \(name)
                Address: \(address)
                Phone: \(phone)
                Product: \(selectedProduct ?? "N/A")
                Price: \(selectedPrice ?? "N/A")
                """

        showAlert(title: "Success", message: summary)
        productLabel.text = ""
        priceLabel.text = ""
        nameTextField.text = ""
                addressTextField.text = ""
                phoneTextField.text = ""
    }
    

}

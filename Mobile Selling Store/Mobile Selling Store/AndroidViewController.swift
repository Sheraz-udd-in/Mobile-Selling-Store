//
//  AndroidViewController.swift
//  Mobile Selling Store
//
//  Created by Student on 06/02/1947 Saka.
//

import UIKit

class AndroidViewController: UIViewController {
    var selectedProduct = ""
        var selectedPrice = ""
    @IBOutlet weak var samsung: UIImageView!
        @IBOutlet weak var oneplus: UIImageView!
        @IBOutlet weak var oppo: UIImageView!
        @IBOutlet weak var vivo: UIImageView!

        override func viewDidLoad() {
            super.viewDidLoad()

            samsung.image = UIImage(named: "Samsung S25 ultra")
            oneplus.image = UIImage(named: "Samsung S25")
            oppo.image = UIImage(named: "Motorola")
            vivo.image = UIImage(named: "Nothing")
        }
    
    @IBAction func buyButtonTapped(_ sender: UIButton) {
        selectedProduct = "Samsung S25 ultra"
        selectedPrice = "₹1,50,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy1ButtonTapped(_ sender: UIButton) {
        selectedProduct = "Samsung S25"
        selectedPrice = "₹80,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy2ButtonTapped(_ sender: UIButton) {
        selectedProduct = "Motorola Edge 60"
        selectedPrice = "₹25,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy3ButtonTapped(_ sender: UIButton) {
        selectedProduct = "Nothing Phone 3a"
        selectedPrice = "₹30,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toBuyVC" {
                if let destinationVC = segue.destination as? BuyViewController {
                    destinationVC.selectedProduct = selectedProduct
                    destinationVC.selectedPrice = selectedPrice
                }
            }
        }
    


}

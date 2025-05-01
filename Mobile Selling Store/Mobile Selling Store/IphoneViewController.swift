//
//  IphoneViewController.swift
//  Mobile Selling Store
//
//  Created by Student on 06/02/1947 Saka.
//

import UIKit

class IphoneViewController: UIViewController {
    var selectedProduct = ""
    var selectedPrice = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        i16.image = UIImage(named: "Iphone16")
                i16pro.image = UIImage(named: "Iphone16pro")
                i15pro.image = UIImage(named: "Iphone15pro")
                i15.image = UIImage(named: "Iphone15")
    }
    
    @IBOutlet weak var i16: UIImageView!
    
    @IBOutlet weak var i16pro: UIImageView!
    
    @IBOutlet weak var i15pro: UIImageView!
    
    @IBOutlet weak var i15: UIImageView!
    
    
    @IBAction func buyButtonTapped(_ sender: UIButton) {
        selectedProduct = "iPhone 16"
           selectedPrice = "₹1,00,000"
           performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy1ButtonTapped(_ sender: UIButton) {
        selectedProduct = "iPhone 16 pro"
        selectedPrice = "₹1,50,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy2ButtonTapped(_ sender: UIButton) {
        selectedProduct = "iPhone 15"
        selectedPrice = "₹60,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy3ButtonTapped(_ sender: UIButton) {
        selectedProduct = "iPhone 15 pro"
        selectedPrice = "₹1,10,000"
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

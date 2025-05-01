//
//  keypadViewController.swift
//  Mobile Selling Store
//
//  Created by Student on 06/02/1947 Saka.
//

import UIKit

class keypadViewController: UIViewController {
    var selectedProduct = ""
        var selectedPrice = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guru.image = UIImage(named: "Guru")
                nokia.image = UIImage(named: "Nokia")
                Lava.image = UIImage(named: "Lava")
                itel.image = UIImage(named: "Itel")
    }
    
    @IBOutlet weak var guru: UIImageView!
    
    @IBOutlet weak var nokia: UIImageView!
    
    @IBOutlet weak var Lava: UIImageView!
    
    @IBOutlet weak var itel: UIImageView!
    
    @IBAction func buyButtonTapped(_ sender: UIButton) {
        selectedProduct = "Nokia 3310"
        selectedPrice = "₹3,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy1ButtonTapped(_ sender: UIButton) {
        selectedProduct = "Samsung Guru"
        selectedPrice = "₹5,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy2ButtonTapped(_ sender: UIButton) {
        selectedProduct = "Lava Hero"
        selectedPrice = "₹1,000"
        performSegue(withIdentifier: "toBuyVC", sender: nil)
    }
    @IBAction func buy3ButtonTapped(_ sender: UIButton) {
        selectedProduct = "Itel it5027"
        selectedPrice = "₹1,800"
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

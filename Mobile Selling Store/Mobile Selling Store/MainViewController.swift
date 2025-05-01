

import UIKit

class MainViewController:  UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let pattern = UIImage(named: "back"){
//            view.backgroundColor = UIColor(patternImage: pattern)
//        }
            
        Iphone.image = UIImage(named: "Iphone")
                samsun.image = UIImage(named: "Samsung")
                keypad.image = UIImage(named: "KeyPad")
        
    }
    
    @IBOutlet weak var Iphone: UIImageView!
    
    @IBOutlet weak var samsun: UIImageView!
    
    @IBOutlet weak var keypad: UIImageView!
    
    
}

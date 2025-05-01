import UIKit

class MobileviewViewController: UIViewController, UITableViewDataSource {

    var selectedCategory: String?
    var mobiles: [String] = []
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        tableView.frame = view.bounds
        tableView.dataSource = self
        view.addSubview(tableView)

        guard let category = selectedCategory else { return }
        self.title = "\(category) Mobiles"

        switch category {
        case "iPhone":
            mobiles = ["iPhone 15", "iPhone 14 Pro", "iPhone SE"]
        case "Android":
            mobiles = ["Samsung Galaxy S24", "OnePlus 12", "Pixel 8"]
        case "Keypad":
            mobiles = ["Nokia 3310", "Samsung Guru", "Lava Hero"]
        default:
            mobiles = []
        }

        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mobiles.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "mobileCell")
        cell.textLabel?.text = mobiles[indexPath.row]
        return cell
    }
}

import UIKit

extension UIColor {
    
    static let sand = UIColor(red: 1.0, green: 0.5, blue: 0, alpha: 0.5)
    
}

class HabitTrackerController: UITableViewController {
    let items = ["Item 1", "Item2", "Item3", "Item4"]
    let images: [UIImageView] = []
    let progresses: [Float] = [0.2, 0.5, 0.6, 1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CustomTableCell", bundle: nil), forCellReuseIdentifier: "CustomTableCell")
        tableView.backgroundColor = .sand
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableCell", for: indexPath) as! CustomTableCell
        
        // cell.habitImage = images[indexPath.row]
        cell.habitName.text = items[indexPath.row]
        cell.habitProgress.progress = progresses[indexPath.row]
        cell.backgroundColor = .sand
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
}


import UIKit

class HabitTrackerController: UIViewController {
    var habits = AppData.user.habits
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func addNewHabitButtonPressed(_ sender: UIBarButtonItem) {
        let viewController = R.storyboard.createHabits.createHabitViewController()!
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(named: "back")
        tableView.register(UINib(nibName: "CustomTableCell", bundle: nil), forCellReuseIdentifier: "CustomTableCell")
        setNavigation()
    }
    
}

extension HabitTrackerController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableCell", for: indexPath) as! CustomTableCell
        cell.progressConstraint.constant = 50
        cell.progressView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        cell.borderWidth = 2.5
        cell.borderColor = UIColor(named: "back")!
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

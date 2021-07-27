import UIKit
import iOSTools

class HabitTrackerController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addNewHabitButtonPressed(_ sender: UIBarButtonItem) {
        push(R.storyboard.createHabits.createHabitViewController()!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(named: "back")
        CustomTableCell.registerFor(tableView)
        setNavigation()
    }
}

extension HabitTrackerController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        //return AppData.user.habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.customTableCell, for: indexPath)!
        cell.progressConstraint.constant = 50
        //cell.habitName.text = AppData.user.habits[indexPath.row].habitName
        //cell.progressView.backgroundColor = AppData.user.habits[indexPath.row].habitColor
        cell.borderWidth = 2.5
        cell.progressView.backgroundColor = UIColor(named: "buttons")
        cell.borderColor = UIColor(named: "back")!
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

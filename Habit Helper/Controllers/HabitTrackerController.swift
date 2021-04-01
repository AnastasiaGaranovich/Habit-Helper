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
    }
    
}

extension HabitTrackerController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableCell", for: indexPath) as! CustomTableCell
        cell.habitName.text = habits[indexPath.row].habitName
        cell.borderWidth = 2.5
        cell.borderColor = habits[indexPath.row].habitColor
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

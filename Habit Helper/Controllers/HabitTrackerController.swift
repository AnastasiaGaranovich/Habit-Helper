import UIKit

class HabitTrackerController: UIViewController {
    var habits = AppData.user.habits
    let progresses: [Float] = [0.2, 0.5, 0.6, 1]
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addNewHabitButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        cell.habitColor.backgroundColor = habits[indexPath.row].habitColor
        cell.habitProgress.progress = progresses[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

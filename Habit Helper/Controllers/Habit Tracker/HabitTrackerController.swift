import UIKit
import iOSTools

class HabitTrackerController: UIViewController {
    
    private var date = Date() {
        didSet {
            setDate()
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var daysProgressView: [UIView]!
    @IBOutlet var daysLabels: [UILabel]!
    
    
    @IBAction func addNewHabitButtonPressed(_ sender: UIBarButtonItem) {
        push(R.storyboard.createHabits.createHabitViewController()!.setPopOnComplete())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDate()
        CustomTableCell.registerFor(tableView)
        setNavigation()
        tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    private func setDate() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd EE"
        
        for i in 0...daysLabels.count - 1 {
            let label = daysLabels[i]
            label.text = dateFormatter.string(from: date.dayShift(i - 3))
        }
    }
    
    private var numberOfDaysInMonth: Int {
        return Calendar.current.range(of: .day, in: .month, for: self.date)!.count
    }
}

extension HabitTrackerController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.user.habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.customTableCell, for: indexPath)!
        cell.progressConstraint.constant = AppData.user.habits[indexPath.row].progress * cell.width
        cell.habitName.text = AppData.user.habits[indexPath.row].habitName
        cell.progressView.backgroundColor = UIColor(named: "buttons")
        cell.borderWidth = 2.5
        cell.borderColor = UIColor(named: "back")!
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

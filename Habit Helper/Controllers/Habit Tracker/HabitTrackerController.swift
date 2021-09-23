import UIKit
import iOSTools

class HabitTrackerController: UIViewController {
    let testArray = ["Habit 1", "Habit 2", "Habit 3"]
    
    private var date = Date() {
        didSet {
            setDate()
        }
    }
    
    private var displayedDates = [Date]()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func addNewHabitButtonPressed(_ sender: UIBarButtonItem) {
        push(R.storyboard.createHabits.createHabitViewController()!.setPopOnComplete())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDate()
        CustomTableCell.registerFor(tableView)
        HabitTrackerDaysCell.registerFor(collectionView)
        setNavigation()
        tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    private func setDate() {
        displayedDates.removeAll()
        for i in 0...7 {
            displayedDates.append(date.dayShift(i - 3))
        }
        collectionView.reloadData()
    }
    
    private var numberOfDaysInMonth: Int {
        return Calendar.current.range(of: .day, in: .month, for: self.date)!.count
    }
    
}

extension HabitTrackerController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return displayedDates.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.habitTrackerDaysCell, for: indexPath)!
        cell.setDate(date: displayedDates[indexPath.row])
        if indexPath.row == 3 {
            cell.selectedDayView.isHidden = false
        }
        else {
            cell.selectedDayView.isHidden = true
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        date = displayedDates[indexPath.row]
    }
}

extension HabitTrackerController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
        //return AppData.user.habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.customTableCell, for: indexPath)!
        //        cell.progressConstraint.constant = AppData.user.habits[indexPath.row].progress * cell.width
        //        cell.habitName.text = AppData.user.habits[indexPath.row].habitName
        cell.habitName.text = testArray[indexPath.row]
        cell.progressView.backgroundColor = UIColor(named: "buttons")
        cell.borderWidth = 2.5
        cell.borderColor = UIColor(named: "back")!
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let deleteAction = UITableViewRowAction(style: .normal, title: "Delete") { (rowAction, indexPath) in
            //TODO: Delete the habit
        }
        deleteAction.backgroundColor = .red
        
        let skipAction = UITableViewRowAction(style: .normal, title: "Skip") { (rowAction, indexPath) in
            //TODO: skip the habit
        }
        skipAction.backgroundColor = .blue
        
        let addAction = UITableViewRowAction(style: .normal, title: "Add") { (rowAction, indexPath) in
            //TODO: add the habit
        }
        addAction.backgroundColor = .green
        
        return [deleteAction, skipAction, addAction]
    }
}

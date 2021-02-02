import UIKit

enum SelectedButtonTag: Int {
    case HabitManager
    case AnimalSettings
    case Background
    case Language
}

class SettingsViewController: UITableViewController, SettingsCellDelegate {
    func didPressButton(_ tag: Int) {
        print("I have pressed a button with a tag: \(tag)")
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        switch tag {
                case SelectedButtonTag.HabitManager.rawValue:
                    let viewController = mainStoryboard.instantiateViewController(withIdentifier: "HabitManager") as! HabitManager
                    navigationController?.pushViewController( viewController, animated: true)
                case SelectedButtonTag.AnimalSettings.rawValue:
                    print("do something when second button is tapped")
                case SelectedButtonTag.Background.rawValue:
                    print("do something when third button is tapped")
                case SelectedButtonTag.Language.rawValue:
                    print("do something when third button is tapped")
                default:
                    print("default")
            }
    }
    
    let items = ["Habit Manager", "Animal Settings", "Background", "Language"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SettingsCell", bundle: nil), forCellReuseIdentifier: "SettingsCell")
        navigationItem.title = "Settings"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath) as! SettingsCell
        cell.cellDelegate = self
        cell.cellButton.tag = indexPath.row
        cell.settingLabel.text = items[indexPath.row]
        return cell
    }
    
    
    @IBAction func LogOut(_ sender: UIButton) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "LoginController") as! LoginController
        self.view.window?.rootViewController = viewController
        self.view.window?.makeKeyAndVisible()
    }
}

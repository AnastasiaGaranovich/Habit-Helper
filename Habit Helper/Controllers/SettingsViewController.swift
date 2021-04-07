import UIKit

enum SelectedButtonTag: Int {
    case HabitManager
    case AnimalSettings
    case Background
}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func logOutButtonPressed(_ sender: UIBarButtonItem) {
        let viewController = R.storyboard.main.loginController()!
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
    }
    
    func didPressButton(_ tag: Int) {
        print("I have pressed a button with a tag: \(tag)")
        switch tag {
                case SelectedButtonTag.HabitManager.rawValue:
                    let viewController = R.storyboard.settings.habitManager()!
                    navigationController?.pushViewController( viewController, animated: true)
                case SelectedButtonTag.AnimalSettings.rawValue:
                    let viewController = R.storyboard.settings.animalSettingsViewController()!
                    navigationController?.pushViewController( viewController, animated: true)
                    print("do something when second button is tapped")
                case SelectedButtonTag.Background.rawValue:
                    let viewController = R.storyboard.settings.backgroundViewController()!
                    navigationController?.pushViewController( viewController, animated: true)
                    print("do something when third button is tapped")
                default:
                    print("default")
            }
    }
    
    let items = ["Habit Manager", "Animal Settings", "Background"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SettingsCell", bundle: nil), forCellReuseIdentifier: "SettingsCell")
        navigationItem.title = "Settings"
    }
    
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource, SettingsCellDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath) as! SettingsCell
        cell.cellDelegate = self
        cell.cellButton.tag = indexPath.row
        cell.settingLabel.text = items[indexPath.row]
        return cell
    }
}

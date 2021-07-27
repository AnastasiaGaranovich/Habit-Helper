import UIKit

enum SelectedButtonTag: Int {
    case AnimalSettings
    case Background
}

class SettingsViewController: UIViewController {
        
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBAction func userInfoButtonPressed(_ sender: UIButton) {
        push(R.storyboard.userInfo.userInfoViewController()!)
    }
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        jumpTo(R.storyboard.logIn.instantiateInitialViewController()!)
    }
    
    func didPressButton(_ tag: Int) {
        print("I have pressed a button with a tag: \(tag)")
        switch tag {
        case SelectedButtonTag.AnimalSettings.rawValue:
            push(R.storyboard.settings.animalSettingsViewController()!)
            print("do something when second button is tapped")
        case SelectedButtonTag.Background.rawValue:
            push(R.storyboard.settings.backgroundViewController()!)
            print("do something when third button is tapped")
        default:
            print("default")
        }
    }
    
    let items = ["Animal Settings", "Background"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = false
        SettingsCell.registerFor(tableView)
        userNameLabel.text = AppData.user.name
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource, SettingsCellDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.settingsCell, for: indexPath)!
        cell.cellDelegate = self
        cell.cellButton.tag = indexPath.row
        cell.settingLabel.text = items[indexPath.row]
        return cell
    }
}

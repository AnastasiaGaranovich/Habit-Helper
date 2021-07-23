import UIKit

enum SelectedButtonTag: Int {
    case AnimalSettings
    case Background
}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
	@IBAction func userInfoButtonPressed(_ sender: UIButton) {
		let viewController = R.storyboard.userInfo.userInfoViewController()!
		navigationController?.pushViewController( viewController, animated: true)
	}
	@IBAction func logOutButtonPressed(_ sender: UIButton) {
		let viewController = R.storyboard.logIn.instantiateInitialViewController()
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
    }
    
    func didPressButton(_ tag: Int) {
        print("I have pressed a button with a tag: \(tag)")
        switch tag {
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
    
    let items = ["Animal Settings", "Background"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
		tabBarController?.tabBar.isHidden = false
		SettingsCell.registerFor(tableView)
        navigationItem.title = "Settings"
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath) as! SettingsCell
        cell.cellDelegate = self
        cell.cellButton.tag = indexPath.row
        cell.settingLabel.text = items[indexPath.row]
        return cell
    }
}

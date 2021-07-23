import UIKit

class AnimalSettingsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
		tabBarController?.tabBar.isHidden = true
        setNavigation()
    }
}

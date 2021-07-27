import UIKit

class BackgroundViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = true
        setNavigation()
    }
}

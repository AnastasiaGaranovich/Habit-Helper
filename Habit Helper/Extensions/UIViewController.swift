import UIKit

func jumpTo(_ viewController: UIViewController) {
    let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()
}

extension UIViewController {
    func setNavigation() {
        guard let nav = navigationController else {
            fatalError("No navigation controller")
        }
        nav.navigationBar.isTranslucent = false
        nav.navigationBar.shadowImage = UIImage()
        nav.navigationBar.backgroundColor = .clear
        nav.view.backgroundColor = .clear
        nav.navigationBar.tintColor = UIColor(named: "buttons")
        nav.navigationBar.topItem?.title = ""
    }
}

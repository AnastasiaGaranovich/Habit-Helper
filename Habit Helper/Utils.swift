import UIKit

extension UIViewController {
    func setNavigation() {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor(named: "back")
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.view.backgroundColor = .clear
        navigationController?.navigationBar.tintColor = UIColor(named: "buttons")
        self.navigationController?.navigationBar.topItem?.title = ""
    }
}

extension UITextField {
    func setTextFieldBorderColor() {
        layer.borderWidth = 2.5
        layer.borderColor = UIColor(named: "border")?.cgColor
    }
}

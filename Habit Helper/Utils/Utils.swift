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

extension UICollectionViewCell {
    func setCellBorderColor(color: String) {
        layer.borderColor = UIColor(named: color)?.cgColor
        layer.borderWidth = 2.5
    }
}

extension UIImage {
	func createSelectionIndicator(color: UIColor, size: CGSize, lineWidth: CGFloat) -> UIImage {
		UIGraphicsBeginImageContextWithOptions(size, false, 0)
		color.setFill()
		UIRectFill(CGRect(x: 0, y: 0, width: size.width, height: lineWidth))
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return image!
	}
}

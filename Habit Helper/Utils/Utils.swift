import UIKit

extension UIViewController {
    func setNavigation() {
        guard let nav = navigationController else {
            fatalError("No navigation controller")
        }
        nav.navigationBar.isTranslucent = false
        nav.navigationBar.barTintColor = UIColor(named: "back")
        nav.navigationBar.shadowImage = UIImage()
        nav.navigationBar.backgroundColor = .clear
        nav.view.backgroundColor = .clear
        nav.navigationBar.tintColor = UIColor(named: "buttons")
        nav.navigationBar.topItem?.title = ""
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

extension Date {
    
    var monthAgo: Date {
        Calendar.current.date(
            byAdding: .month,
            value: -1,
            to: self)!
    }
    
    var nextMonth: Date {
        Calendar.current.date(
            byAdding: .month,
            value: +1,
            to: self)!
    }
    
}

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
    
    var isEmpty: Bool {
        return text?.isEmpty ?? true
    }
    var isValidEmail: Bool {
        guard let string = text else {
            return false
        }
        return string.isValidEmail
    }
    var isValidPassword: Bool {
        guard let string = text else {
            return false
        }
        return string.passwordStrength == .valid
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
    
    var dayAgo: Date {
        Calendar.current.date(
            byAdding: .day,
            value: -1,
            to: self)!
    }
    
    var nextDay: Date {
        Calendar.current.date(
            byAdding: .day,
            value: +1,
            to: self)!
    }
    
    func dayShift(_ shift: Int) -> Date {
        Calendar.current.date(
            byAdding: .day,
            value: shift,
            to: self)!
    }
}

enum PasswordStrength {
    case short
    case noDigits
    case valid
}

extension String {
    var isValidEmail: Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let test = NSPredicate(format:"SELF MATCHES %@", regEx)
        return test.evaluate(with: self)
    }
    var containsNumber: Bool {
        return rangeOfCharacter(from: .decimalDigits) != nil
    }
    var passwordStrength: PasswordStrength {
        if count < 8 {
            return .short
        }
        if !containsNumber {
            return .noDigits
        }
        return .valid
    }
}

extension UIButton {
    func setButtonBorderColor() {
        layer.borderWidth = 2.5
        layer.borderColor = UIColor(named: "border")?.cgColor
    }
}

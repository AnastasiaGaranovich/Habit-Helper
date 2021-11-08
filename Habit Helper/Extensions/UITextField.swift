import UIKit

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

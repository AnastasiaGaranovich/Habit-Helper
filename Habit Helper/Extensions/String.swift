import Foundation

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



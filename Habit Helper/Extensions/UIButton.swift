import UIKit

extension UIButton {
    func setButtonBorderColor() {
        layer.borderWidth = 2.5
        layer.borderColor = UIColor(named: "border")?.cgColor
    }
}

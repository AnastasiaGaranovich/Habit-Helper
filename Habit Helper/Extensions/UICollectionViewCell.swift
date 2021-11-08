import UIKit

extension UICollectionViewCell {
    func setCellBorderColor(color: String) {
        layer.borderColor = UIColor(named: color)?.cgColor
        layer.borderWidth = 2.5
    }
}

import UIKit

class CustomTableCell: UITableViewCell {
    @IBOutlet weak var habitColor: UIView!
    @IBOutlet weak var habitName: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var progressConstraint: NSLayoutConstraint!
}

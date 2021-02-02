import UIKit

class CustomTableCell: UITableViewCell {

    // Link those IBOutlets with the UILabels in your .XIB file
    @IBOutlet weak var habitImage: UIImageView!
    @IBOutlet weak var habitName: UILabel!
    @IBOutlet weak var habitProgress: UIProgressView!

}

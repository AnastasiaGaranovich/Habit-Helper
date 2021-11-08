import UIKit

class HabitTrackerDaysCell: UICollectionViewCell {
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dayProgressView: UIView!
    @IBOutlet weak var selectedDayView: UIView!
    
    func setDate(date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd EE"
        dayLabel.text = dateFormatter.string(from: date)
        dayProgressView.backgroundColor = UIColor(named: "border")?.withAlphaComponent(AppData.user.habits.averageProgress)
    }
}

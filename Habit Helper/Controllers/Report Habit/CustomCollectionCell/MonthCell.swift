import UIKit

class MonthCell : UICollectionViewCell {
    @IBOutlet weak var habitName: UILabel!
    @IBOutlet weak var habitIcon: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
	
	private var date: Date!
    
	func setDate(_ date: Date) {
		self.date = date
		collectionView.reloadData()
	}
	
    func setup() {
		DayCell.registerFor(collectionView)
    }
    
}

extension MonthCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfDaysInMonth
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.dayCell, for: indexPath)!
		cell.background.backgroundColor = UIColor(named: "back")
        cell.dayLabel.text = String(indexPath.row + 1)
        return cell
    }
    
	private var numberOfDaysInMonth: Int {
		return Calendar.current.range(of: .day, in: .month, for: self.date)!.count
    }
}

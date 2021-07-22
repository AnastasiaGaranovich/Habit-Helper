import UIKit

class CustomCollectionCell : UICollectionViewCell {
    @IBOutlet weak var habitName: UILabel!
    @IBOutlet weak var habitIcon: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setup() {
		//TODO: - change cells registration to this everywhere
		CalendarCell.registerFor(collectionView)
       // collectionView.register(UINib(nibName: "CalendarCell", bundle: nil), forCellWithReuseIdentifier: "CalendarCell")
    }
    
}

extension CustomCollectionCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getDayNumbersInMonth()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.calendarCell, for: indexPath)!
        cell.background.backgroundColor = .lightGray
        cell.dayLabel.text = String(indexPath.row + 1)
        return cell
    }
    
    private func getDayNumbersInMonth() -> Int {
        let dateComponents = DateComponents()
        let year = dateComponents.year
        let month = dateComponents.month
        let calendar = Calendar.current
        let date = DateComponents(year: year, month: month)
        let currentDate = calendar.date(from: date)!

        let range = calendar.range(of: .day, in: .month, for: currentDate)!
        let numDays = range.count
        return numDays
    }
}

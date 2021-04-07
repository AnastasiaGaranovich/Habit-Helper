import UIKit

class CustomCollectionCell : UICollectionViewCell {
    @IBOutlet weak var habitName: UILabel!
    @IBOutlet weak var habitIcon: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setup() {
        collectionView.register(UINib(nibName: "CalendarCell", bundle: nil), forCellWithReuseIdentifier: "CalendarCell")
    }
    
}

extension CustomCollectionCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.calendarCell, for: indexPath)!
        cell.background.backgroundColor = .lightGray
        cell.dayLabel.text = "1"
        return cell
    }
}

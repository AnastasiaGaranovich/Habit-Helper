import UIKit

class CustomCollectionCell : UICollectionViewCell {
    @IBOutlet weak var habitName: UILabel!
    @IBOutlet weak var habitIcon: UIImageView!
    
}

extension CustomCollectionCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.calendarCell, for: indexPath)!
        cell.background.backgroundColor = .lightGray
        return cell
    }
    
    
}

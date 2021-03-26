import UIKit


class ReportHabitController: UICollectionViewController {
    
    var habits = AppData.user.habits
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "CustomCollectionCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionCell")
        layoutCell()
    }
    
    private func layoutCell() {
        let cellSize = CGSize(width: view.frame.size.width / 2 - 10, height: view.frame.size.width / 2)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical //.horizontal
        layout.itemSize = cellSize
        layout.sectionInset = UIEdgeInsets(top: 1, left: 0, bottom: 1, right: 0)
        layout.minimumLineSpacing = 1.0
        layout.minimumInteritemSpacing = 1.0
        collectionView.setCollectionViewLayout(layout, animated: true)
        
        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return habits.count
    }
    
    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionCell", for: indexPath) as! CustomCollectionCell
        cell.habitName.text = habits[indexPath.row].habitName
        cell.backgroundColor = habits[indexPath.row].habitColor
        return cell
    }
    
}

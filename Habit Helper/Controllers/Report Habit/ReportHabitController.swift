import UIKit


class ReportHabitController: UIViewController {
    
    var habits = AppData.user.habits
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var starsCountLabel: UILabel!
    
    @IBAction func previousDateButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func nextDateButtonPressed(_ sender: UIButton) {
        
    }
    
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
    
}

extension ReportHabitController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.customCollectionCell, for: indexPath)!
        cell.setCellBorderColor(color: "border")
        cell.setup()
        return cell
    }
}

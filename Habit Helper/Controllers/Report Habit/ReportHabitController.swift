import UIKit


class ReportHabitController: UIViewController {
	
	private var date = Date() {
		didSet {
			setDate()
			collectionView.reloadData()
		}
	}
    
	private var habits: [Habit] {
		AppData.user.habits
	}
    
	@IBOutlet weak var dateLabel: UILabel!
	@IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var starsCountLabel: UILabel!
    
    @IBAction func previousDateButtonPressed(_ sender: UIButton) {
		date = date.monthAgo
    }
    
    @IBAction func nextDateButtonPressed(_ sender: UIButton) {
		date = date.nextMonth
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
		setDate()
		MonthCell.registerFor(collectionView)
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
    
	private func setDate() {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "MMM yyyy"
		dateLabel.text = dateFormatter.string(from: date)
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.monthCell, for: indexPath)!
        cell.setCellBorderColor(color: "border")
		cell.setDate(date)
        cell.setup()
        return cell
    }
}

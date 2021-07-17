import UIKit

fileprivate let colorArray = [#colorLiteral(red: 0.5465276837, green: 0.5135271549, blue: 0.4609381557, alpha: 1), #colorLiteral(red: 0.6923422217, green: 0.6765556335, blue: 0.5114421248, alpha: 1), #colorLiteral(red: 0.7955096364, green: 0.8574722409, blue: 0.5306774974, alpha: 1), #colorLiteral(red: 0.4499804378, green: 0.4117792845, blue: 0.5344714522, alpha: 1), #colorLiteral(red: 0.7246080637, green: 0.5560817719, blue: 0.8167122006, alpha: 1)]
fileprivate let iconArray: [UIImage] = [#imageLiteral(resourceName: "26a20a99d83cf280fe907a14674c1ad6"), #imageLiteral(resourceName: "003-writing"), #imageLiteral(resourceName: "044-guitar")]


class CreateHabitViewController: UIViewController {
    
    @IBOutlet weak var habitNameTextField: UITextField!
    @IBOutlet weak var goalsTextField: UITextField!
    @IBOutlet weak var habitTypeSegmControl: UISegmentedControl!
    @IBOutlet weak var colorCollectionView: UICollectionView!
    @IBOutlet weak var iconCollectionView: UICollectionView!
    
    @IBAction func habitStartDate(_ sender: UIDatePicker) {
        
    }
    
    @IBAction func habitEndDate(_ sender: UIDatePicker) {
        
    }
    
    @IBAction func completeButtonPressed(_ sender: UIButton) {
        let viewController = R.storyboard.main.tabBarController()!
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        habitNameTextField.setTextFieldBorderColor()
        goalsTextField.setTextFieldBorderColor()
    }
    
}

extension CreateHabitViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == colorCollectionView {
            return nummberOfColors()
        }
        else {
            return numberOfIcons()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {        if collectionView == colorCollectionView {
            return colorCellFor(indexPath)
        }
        else {
            return iconCellFor(indexPath)
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//    }
    
}


//MARK: - Color Collection

private extension CreateHabitViewController {
    
    func nummberOfColors() -> Int {
        colorArray.count
    }
    
    func colorCellFor(_ indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colorCollectionView.dequeueReusableCell(withReuseIdentifier: "ColorCell", for: indexPath)
        cell.backgroundColor = colorArray[indexPath.row]
        return cell
    }
    
//    func didSelectColorAt(_ indexPath: IndexPath) {
// нажатие на ячейку и добавление цвета привычки
//    }
//
}

//MARK: - Icon Collection

private extension CreateHabitViewController {
    
    func numberOfIcons() -> Int {
        iconArray.count
    }
    
    func iconCellFor(_ indexPath: IndexPath) -> UICollectionViewCell {
        let cell = iconCollectionView.dequeueReusableCell(withReuseIdentifier: "IconCell", for: indexPath) as! IconCell
        cell.icon.image = iconArray[indexPath.row]
        return cell
    }
//    func didSelectColorAt(_ indexPath: IndexPath) {
// нажатие на ячейку и добавление иконки привычки
//    }
}

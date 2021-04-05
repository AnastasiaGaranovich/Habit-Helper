import UIKit

class CreateHabitViewController: UIViewController {
    
    let colorArray = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]
    let iconArray: [UIImage] = [#imageLiteral(resourceName: "ride"), #imageLiteral(resourceName: "health"), #imageLiteral(resourceName: "pilatec")]
    
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
        let viewController = R.storyboard.main.uiTabBarController()!
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        habitNameTextField.setTextFieldBorderColor()
        goalsTextField.setTextFieldBorderColor()
        //iconCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "IconCell")
        //не идет регистрация ячейки коллекшн крашится
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
        let cell = colorCollectionView.dequeueReusableCell(withReuseIdentifier: "IconCell", for: indexPath) as! IconCell
        cell.icon.image = iconArray[indexPath.row]
        return cell
    }
//    func didSelectColorAt(_ indexPath: IndexPath) {
// нажатие на ячейку и добавление иконки привычки
//    }
}

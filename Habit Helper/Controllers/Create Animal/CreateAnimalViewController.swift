import UIKit

fileprivate let animals = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)]

class CreateAnimalViewController: UIViewController {
    @IBOutlet weak var animalNameTextField: UITextField!
    @IBOutlet weak var animalView: UIView!
    @IBAction func animalNameValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        push(R.storyboard.createHabits.createHabitViewController()!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        animalNameTextField.setTextFieldBorderColor()
    }
    
}

extension CreateAnimalViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.animalCell, for: indexPath)!
        cell.backgroundColor = animals[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //вместо цвета потом будут на выбор питомцы
        animalView.backgroundColor = animals[indexPath.row]
    }
}

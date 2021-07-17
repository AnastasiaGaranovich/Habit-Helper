import UIKit


class CreateAnimalViewController: UIViewController {
    @IBOutlet weak var animalNameTextField: UITextField!
    
    @IBAction func animalNameValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        let viewController = R.storyboard.createHabits.createHabitViewController()!
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        animalNameTextField.setTextFieldBorderColor()
    }
    
}
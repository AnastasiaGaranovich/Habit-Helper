import UIKit

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userAgeTextField: UITextField!
    @IBOutlet weak var sexSegmControl: UISegmentedControl!
    
    @IBAction func nameValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func ageValueChanged(_ sender: UITextField) {
        
    }
    @IBAction func birthdayDatePicker(_ sender: UIDatePicker) {
        
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        let viewController = R.storyboard.createAnimal.createAnimalViewController()!
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        userNameTextField.setTextFieldBorderColor()
        userAgeTextField.setTextFieldBorderColor()
    }
    
}

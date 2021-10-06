import UIKit

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var sexSegmControl: UISegmentedControl!
    @IBOutlet weak var birthdayButton: UIButton!
    
    @IBAction func nameValueChanged(_ sender: UITextField) {
        
    }
    @IBAction func birthdayButtonPressed(_ sender: UIButton) {
        
    }
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        push(R.storyboard.createHabits.createHabitViewController()!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        userNameTextField.setTextFieldBorderColor()
        birthdayButton.setButtonBorderColor()
    }
    
}

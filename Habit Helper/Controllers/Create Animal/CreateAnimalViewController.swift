import UIKit


class CreateAnimalViewController: UIViewController {
    @IBOutlet weak var animalNameTextField: UITextField!
    
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



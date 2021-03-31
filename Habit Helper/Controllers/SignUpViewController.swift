import UIKit


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func emailValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func passwordValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let viewController = R.storyboard.registration.createAccountViewController()!
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        emailTextField.setTextFieldBorderColor()
        passwordTextField.setTextFieldBorderColor()
    }
}

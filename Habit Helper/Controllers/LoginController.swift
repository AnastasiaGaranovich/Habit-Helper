import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBAction func loginValueChanged(_ sender: UITextField) {
        checkСorrectnessLoginPass()
    }
    
    @IBAction func passwordValueChanged(_ sender: UITextField) {
        checkСorrectnessLoginPass()
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func signDonePressed(_ sender: UIButton) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "UITabBarController") as! UITabBarController
        self.view.window?.rootViewController = viewController
        self.view.window?.makeKeyAndVisible()
        }
    
    @IBAction func forgotPassButtonPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func checkСorrectnessLoginPass() {
        if loginTextField.text != AppData.user.email || passwordTextField.text != AppData.user.password {
            alertLabel.text = "Wrong login or password"
        }
        else {
            alertLabel.isHidden = true
        }
    }

}


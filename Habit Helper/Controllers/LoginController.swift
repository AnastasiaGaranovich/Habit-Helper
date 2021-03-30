import UIKit
import iOSTools
import SwiftyTools
import ProgressHUD

class LoginController: UIViewController {
    
    @IBOutlet weak var alertLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let color = UIColor(named: "border")
    
    @IBAction func loginValueChanged(_ sender: UITextField) {
        checkСorrectnessLoginPass()
    }
    
    @IBAction func passwordValueChanged(_ sender: UITextField) {
        checkСorrectnessLoginPass()
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func signDonePressed(_ sender: UIButton) {
        ProgressHUD.show()
        Network.getUser { user, error in
            ProgressHUD.dismiss()
            if let error = error {
                LogError(error)
                Alert.error(error)
                return
            }
            AppData.user = user
            Log("izi")
            Log(AppData.user.toJSONString())
            self.openApp()
        }
    }
    
    private func openApp() {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "UITabBarController") as! UITabBarController
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func forgotPassButtonPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.layer.borderWidth = 2.5
        loginTextField.layer.borderColor = color?.cgColor
        
        passwordTextField.layer.borderWidth = 2.5
        passwordTextField.layer.borderColor = color?.cgColor
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


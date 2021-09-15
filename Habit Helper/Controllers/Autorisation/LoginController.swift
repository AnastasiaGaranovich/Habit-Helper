import UIKit
import Rswift
import iOSTools
import SwiftyTools
import ProgressHUD

class LoginController: UIViewController {
    
    @IBOutlet weak var alertLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginValueChanged(_ sender: UITextField) {
        validationСheck()
    }
    
    @IBAction func passwordValueChanged(_ sender: UITextField) {
        validationСheck()
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        push(R.storyboard.registration.signUpViewController()!)
        print("Kok")
    }
    
    @IBAction func signDonePressed(_ sender: UIButton) {
        if validationСheck() == false {
            return
        }
        
        ProgressHUD.show()
        Network.login(email: self.loginTextField.text!,
                      password: self.passwordTextField.text!) { user, error in
            ProgressHUD.dismiss()
            if let error = error {
                LogError(error)
                Alert.error(error)
                return
            }
            AppData.user = user
            Log("izi")
            AppData.isLogined = true
            self.openApp()
        }
    }
    
    private func openApp() {
        jumpTo(R.storyboard.main.instantiateInitialViewController()!)
    }
    
    @IBAction func forgotPassButtonPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.setTextFieldBorderColor()
        passwordTextField.setTextFieldBorderColor()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    @discardableResult
    private func validationСheck() -> Bool {
        if loginTextField.isEmpty || passwordTextField.isEmpty {
            alertLabel.text = "Fill all fields"
            return false
        }
        if !loginTextField.isValidEmail {
            alertLabel.text = "Invalid email format"
            return false
        }
        if !passwordTextField.isValidPassword {
            alertLabel.text = "Invalid password format"
            return false
        }
        alertLabel.text = ""
        return true
    }
}


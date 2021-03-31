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
        checkСorrectnessLoginPass()
    }
    
    @IBAction func passwordValueChanged(_ sender: UITextField) {
        checkСorrectnessLoginPass()
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let viewController = R.storyboard.registration.signUpViewController()!
        navigationController?.pushViewController(viewController, animated: true)
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
        let viewController = R.storyboard.main.uiTabBarController()!
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
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
    
    private func checkСorrectnessLoginPass() {
        if loginTextField.text != AppData.user.email || passwordTextField.text != AppData.user.password {
            alertLabel.text = "Wrong login or password"
        }
        else {
            alertLabel.isHidden = true
        }
    }

}


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
        
    }
    
    @IBAction func passwordValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
		push(R.storyboard.registration.signUpViewController()!)
		print("Kok")
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
		//TODO: - move to extension
		let viewController = R.storyboard.main.instantiateInitialViewController()
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
}


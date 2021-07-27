//
//  UserInfo.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 23.07.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = true
        setNavigation()
        userNameTextField.setTextFieldBorderColor()
        emailTextField.setTextFieldBorderColor()
    }
}

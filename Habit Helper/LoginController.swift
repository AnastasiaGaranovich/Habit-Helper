//
//  ViewController.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 10/26/20.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signDonePressed(_ sender: UIButton) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "UITabBarController") as! UITabBarController
        self.view.window?.rootViewController = viewController
        self.view.window?.makeKeyAndVisible()
        }
}


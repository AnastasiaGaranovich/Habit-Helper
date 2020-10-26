//
//  File.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 10/26/20.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBAction func LogOut(_ sender: UIButton) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "LoginController") as! LoginController
        self.view.window?.rootViewController = viewController
        self.view.window?.makeKeyAndVisible()
    }
}

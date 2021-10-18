//
//  NavigationBar.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 18.10.2021.
//

import UIKit

class NavigationBar: UIView {
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        AppData.isLogined = false
        jumpTo(R.storyboard.logIn.instantiateInitialViewController()!)
    }
}

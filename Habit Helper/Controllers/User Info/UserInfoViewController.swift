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
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var birthdayButton: UIButton!
    
    @IBAction func usernameValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func emailValueChanged(_ sender: UITextField) {
        
    }
    
    @IBAction func birthdayButtonPressed(_ sender: UIButton) {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        let alert = UIAlertController(title: "Select Date", message: "", preferredStyle: .actionSheet)
        
        // height constraint
        let constraintHeight = NSLayoutConstraint(
            item: alert.view!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute:
                NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: view.frame.height / 3)
        alert.view.addConstraint(constraintHeight)
        
        alert.view.addSubview(datePicker)
        datePicker.frame = CGRect(0, 0, view.frame.size.width, view.frame.height / 3.5)
        
        let ok = UIAlertAction(title: "Done", style: .destructive) { (action) in
            self.alertDonePressed(datePicker: datePicker)
        }
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func editUserImageButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func saveChangesButtonPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.isHidden = true
        setNavigation()
        userNameTextField.setTextFieldBorderColor()
        emailTextField.setTextFieldBorderColor()
        birthdayButton.setButtonBorderColor()
        emailTextField.placeholder = AppData.user.email
        userNameTextField.placeholder = AppData.user.name
    }
    
    private func alertDonePressed(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        let dateString = dateFormatter.string(from: datePicker.date)
        self.birthdayButton.setTitle(dateString, for: .normal)
        self.birthdayButton.setTitleColor(UIColor(named: "text"), for: .normal)
    }
}

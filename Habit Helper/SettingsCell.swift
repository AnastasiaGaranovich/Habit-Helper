//
//  SettingsCell.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 10/28/20.
//

import UIKit

protocol SettingsCellDelegate : class {
    func didPressButton(_ tag: Int)
}

class SettingsCell: UITableViewCell
{
     var cellDelegate: SettingsCellDelegate?
    @IBOutlet weak var settingLabel: UILabel!
      @IBOutlet weak var cellButton: UIButton!
    // connect the button from your cell with this method
    @IBAction func buttonPressed(_ sender: UIButton) {
        cellDelegate?.didPressButton(sender.tag)
    }
}

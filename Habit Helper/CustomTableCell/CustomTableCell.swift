//
//  CustomTableCell.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 10/27/20.
//

import UIKit

class CustomTableCell: UITableViewCell {

    // Link those IBOutlets with the UILabels in your .XIB file
    @IBOutlet weak var habitImage: UIImageView!
    @IBOutlet weak var habitName: UILabel!
    @IBOutlet weak var habitProgress: UIProgressView!

}

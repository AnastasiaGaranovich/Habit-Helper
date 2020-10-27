//
//  HabitTrackerController.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 10/27/20.
//

import UIKit

class HabitTrackerController: UITableViewController {
    let items = ["Item 1", "Item2", "Item3", "Item4"]
    let images: [UIImageView] = []
    let progresses: [UIProgressView] = []

        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.register(UINib(nibName: "CustomTableCell", bundle: nil), forCellReuseIdentifier: "CustomTableCell")
        }

        // MARK: - UITableViewDataSource

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableCell", for: indexPath) as! CustomTableCell

            cell.habitImage = images[indexPath.row]
            cell.habitName.text = items[indexPath.row]
            cell.habitProgress = progresses[indexPath.row]

            return cell
        }
}

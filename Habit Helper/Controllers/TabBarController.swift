//
//  TabBarController.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import UIKit

class TabBarController: UITabBarController {
	private let selectedItemFont = UIFont.systemFont(ofSize: 12)
	private let itemFont = UIFont.systemFont(ofSize: 13)
	private var lineSize: CGSize {
		CGSize(width: tabBar.frame.width / CGFloat(tabBar.items!.count),
			   height: tabBar.frame.height)
	}
	override var selectedIndex: Int {
		didSet {
			guard let selectedViewController = viewControllers?[selectedIndex] else {
				return
			}
			selectedViewController.tabBarItem.setTitleTextAttributes(
				[.font: selectedItemFont], for: .normal)
		}
	}
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		tabBar.selectionIndicatorImage =
			UIImage().createSelectionIndicator(color: UIColor.green,
											   size: lineSize,
											   lineWidth: 2.0)
	}
	override var selectedViewController: UIViewController? {
		didSet {
			guard let viewControllers = viewControllers else {
				return
			}
			for viewController in viewControllers {
				if viewController == selectedViewController {
					let selected: [NSAttributedString.Key: AnyObject] =
						[.font: selectedItemFont]
					viewController.tabBarItem.setTitleTextAttributes(selected, for: .normal)
				} else {
					let normal: [NSAttributedString.Key: AnyObject] =
						[.font: itemFont]
					viewController.tabBarItem.setTitleTextAttributes(normal, for: .normal)
				}
			}
		}
	}
}

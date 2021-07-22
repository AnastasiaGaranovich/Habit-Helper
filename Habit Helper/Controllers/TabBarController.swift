//
//  TabBarController.swift
//  Habit Helper
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import UIKit

class TabBarController: UITabBarController {
	var indicatorImage: UIImageView?
		
	  override func viewDidLoad() {
		super.viewDidLoad()
			
		let numberOfItems = CGFloat(tabBar.items!.count)
		let tabBarItemSize = CGSize(width: (tabBar.frame.width / numberOfItems), height: tabBar.frame.height)
		indicatorImage = UIImageView(image: createSelectionIndicator(color: UIColor(named: "buttons")!, size: tabBarItemSize, lineHeight: 3))
		indicatorImage?.center.x =  tabBar.frame.width/4/2
		tabBar.addSubview(indicatorImage!)
	  }
		
	  override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
		UIView.animate(withDuration: 0.3) {
		  let number = -(tabBar.items?.index(of: item)?.distance(to: 0))! + 1
		  if number == 1 {
			self.indicatorImage?.center.x =  tabBar.frame.width/4/2
		  } else if number == 2 {
			self.indicatorImage?.center.x =  tabBar.frame.width/4/2 + tabBar.frame.width/4
		  } else if number == 3 {
			self.indicatorImage?.center.x =  tabBar.frame.width/4/2 + tabBar.frame.width/2
		  } else {
			self.indicatorImage?.center.x = tabBar.frame.width - tabBar.frame.width/4/2
		  }
		}
	  }

	  func createSelectionIndicator(color: UIColor, size: CGSize, lineHeight: CGFloat) -> UIImage {
		let rect: CGRect = CGRect(x: 0, y: 0, width: size.width, height: lineHeight)
		UIGraphicsBeginImageContextWithOptions(size, false, 0)
		color.setFill()
		UIRectFill(rect)
		let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
		return image
	}
}

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
        
        selectedIndex = 1
        moveStripe(tabBar.items![1])
        
        setupImages()
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        UIView.animate(withDuration: 0.3) {
            self.moveStripe(item)
        }
    }
}

private extension TabBarController {
    func moveStripe(_ item: UITabBarItem) {
        let number = -(tabBar.items?.firstIndex(of: item)?.distance(to: 0))! + 1
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
    
    func setupImages() {
        tabBar.items![0].image = UIImage(named: "add unactive")?.withRenderingMode(.alwaysOriginal)
        tabBar.items![1].image = UIImage(named: "profile unactive")?.withRenderingMode(.alwaysOriginal)
        tabBar.items![2].image = UIImage(named: "calendar unactive")?.withRenderingMode(.alwaysOriginal)
        tabBar.items![3].image = UIImage(named: "menu unactive")?.withRenderingMode(.alwaysOriginal)
        
        tabBar.items![0].selectedImage = UIImage(named: "add")?.withRenderingMode(.alwaysOriginal)
        tabBar.items![1].selectedImage = UIImage(named: "profile")?.withRenderingMode(.alwaysOriginal)
        tabBar.items![2].selectedImage = UIImage(named: "calendar")?.withRenderingMode(.alwaysOriginal)
        tabBar.items![3].selectedImage = UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal)
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

import UIKit

class PerfectlyCraftedTabbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
      setupViewControllers()
    }
  
  func setupViewControllers(){
    let feedController = FeedViewController(feedView: FeedView())
    let naviContorller = UINavigationController(rootViewController: feedController)
    feedController.tabBarItem.image = #imageLiteral(resourceName: "icons8-news-feed-50 (2).png")
    feedController.tabBarItem.title = "Feed"
    viewControllers = [naviContorller]
    naviContorller.tabBarController?.tabBar.barTintColor = #colorLiteral(red: 0.1478379965, green: 0.2834191024, blue: 0.9234145284, alpha: 1)
    naviContorller.tabBarController?.tabBar.tintColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
  }
  

}

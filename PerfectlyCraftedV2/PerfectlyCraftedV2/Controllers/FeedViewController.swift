import UIKit
class FeedViewController: UIViewController {

  var feedView: FeedView!
  var storiesView: StoriesView!
  
 let storiesHeaderView = "HeaderView"
  init(feedView:FeedView) {
    super.init(nibName: nil, bundle: nil)
    self.feedView = feedView
  }

  required init?(coder aDecoder: NSCoder) {
   super.init(coder: aDecoder)

  }
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(feedView)
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.title = "PerfectlyCrafted"
    navigationItem.hidesSearchBarWhenScrolling = false
    feedView.feedCollectionView.register(StoriesView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: storiesHeaderView)
    feedView.feedCollectionView.dataSource = self
    feedView.feedCollectionView.delegate = self
    navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1478379965, green: 0.2834191024, blue: 0.9234145284, alpha: 1)

  
  }
}
extension FeedViewController:UICollectionViewDataSource{
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == feedView.feedCollectionView {
      return 3
    } else {
      return 5
    }
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if collectionView != feedView.feedCollectionView {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCell", for: indexPath) as! StoriesCell
      return cell
    } else {
      guard let cell = feedView.feedCollectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCell else {fatalError("No FeedCell found")}
      cell.backgroundColor = .white
      return cell
      
    }
  }

  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    if (kind == UICollectionView.elementKindSectionHeader && collectionView == feedView.feedCollectionView) {
      guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: storiesHeaderView, for: indexPath) as? StoriesView else { fatalError("df")}
      headerView.storiesCV.dataSource = self
      headerView.storiesCV.delegate = self
      headerView.storiesCV.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "a")
      return headerView
    } else {
      let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "a", for: indexPath)
      return headerView
    }

  }

}
extension FeedViewController:UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if collectionView == feedView.feedCollectionView {
       return CGSize(width: view.bounds.width, height:view.bounds.height)
    } else {
      return  CGSize(width: 100, height: 100)
    }

  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    if collectionView == feedView.feedCollectionView {
       return CGSize(width: 140, height: 140)
    } else {
      return  CGSize(width: 0, height: 0)
    }
    
  }
  
  }
  



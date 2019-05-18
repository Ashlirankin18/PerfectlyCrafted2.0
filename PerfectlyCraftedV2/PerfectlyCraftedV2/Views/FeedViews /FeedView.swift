import UIKit

class FeedView: UIView {
  
 let feedCollectionView:UICollectionView = {
    let layout = UICollectionViewFlowLayout()
  layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
    cv.backgroundColor = #colorLiteral(red: 0.8176601529, green: 0.8177981973, blue: 0.8176420331, alpha: 1)
    cv.register(UINib(nibName: "FeedCell", bundle: nil), forCellWithReuseIdentifier: "FeedCell")
    return cv
  }()

  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  func commonInit(){
    backgroundColor = .white
    setupViews()
   

}
}
extension FeedView {
  func setupViews(){
    setUpCollectionView()
  }
  
  func setUpCollectionView() {
    addSubview(feedCollectionView)
   feedCollectionView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
       feedCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
      feedCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
      feedCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
      feedCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
      ])
  }
}

import UIKit

class StoriesView: UICollectionReusableView {

  lazy var storiesCV:UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
    let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
    layout.scrollDirection = .horizontal
    cv.backgroundColor = .white
    cv.register(UINib(nibName: "StoriesCell", bundle: nil), forCellWithReuseIdentifier: "StoriesCell")
    return cv
  }()
  
  override init(frame: CGRect) {
    super.init(frame: CGRect.zero)
    addSubview(storiesCV)
    
  }
  override func layoutSubviews() {
    super.layoutSubviews()
    storiesCV.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

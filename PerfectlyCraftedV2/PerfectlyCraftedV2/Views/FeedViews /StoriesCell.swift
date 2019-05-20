import UIKit

class StoriesCell: UICollectionViewCell {

  @IBOutlet weak var PCUserImage: UIImageView!
  
  
  override func layoutSubviews() {
    super.layoutSubviews()
    self.layer.cornerRadius = frame.width/2
    self.layer.masksToBounds = true
    self.layer.borderWidth = 3
    self.layer.borderColor = UIColor.blue.cgColor
  }
  
}

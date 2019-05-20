import UIKit

class FeedCell: UICollectionViewCell {

 
  @IBOutlet weak var postImage: UIImageView!
  @IBOutlet weak var postCaption: UILabel!
  @IBOutlet weak var moreOptions: UIButton!
  @IBOutlet weak var shareButton: UIButton!
  @IBOutlet weak var likesButton: UIButton!
  @IBOutlet weak var commentButton: UIButton!

  @IBOutlet weak var userImage: UIImageView!
  @IBOutlet weak var userName: UILabel!
  
  override func layoutSubviews() {
    super.layoutSubviews()
  userImage.layer.cornerRadius = userImage.frame.width/2
    userImage.layer.masksToBounds = true
    
  }
}

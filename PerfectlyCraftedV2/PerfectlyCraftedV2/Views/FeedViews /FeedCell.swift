import UIKit

class FeedCell: UICollectionViewCell {

  @IBOutlet weak var postImage: UIImageView!
  @IBOutlet weak var postCaption: UILabel!
  @IBOutlet weak var moreOptions: UIButton!
  @IBOutlet weak var shareButton: UIButton!
  @IBOutlet weak var likesButton: UIButton!
  @IBOutlet weak var commentButton: UIButton!
  
  override func awakeFromNib() {
      super.awakeFromNib()
     
    }

}

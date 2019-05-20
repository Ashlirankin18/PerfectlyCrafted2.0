import UIKit

extension UIImage{
  func getCroppedRatio() -> CGFloat {
   return CGFloat( self.size.width / self.size.height)
  }
}

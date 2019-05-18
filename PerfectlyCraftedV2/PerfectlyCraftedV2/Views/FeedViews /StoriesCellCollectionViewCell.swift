//
//  StoriesCellCollectionViewCell.swift
//  PerfectlyCraftedV2
//
//  Created by Ashli Rankin on 5/16/19.
//  Copyright © 2019 Ashli Rankin. All rights reserved.
//

import UIKit

class StoriesCellCollectionViewCell: UICollectionViewCell {

  @IBOutlet weak var PCUserImage: UIImageView!
  
  override func layoutSubviews() {
    super.layoutSubviews()
    PCUserImage.layer.cornerRadius = PCUserImage.frame.width/2
    PCUserImage.layer.masksToBounds = true
  }
  
}

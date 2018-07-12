//
//  FeatureCollectionViewCell.swift
//  Toolbox
//
//  Created by Dantong Jin on 2018/7/12.
//  Copyright © 2018 Dantong Jin. All rights reserved.
//

import UIKit

class FeatureCollectionViewCell: UICollectionViewCell {
  @IBOutlet var iconImageView: UIImageView!
  
  @IBOutlet var titleLabel: UILabel!
  
  func configure(with feature: Feature) {
    iconImageView.image = UIImage(named: FeatureIcon.filter.rawValue)
    titleLabel.text = feature.title
  }
  
}

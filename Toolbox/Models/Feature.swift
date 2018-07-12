//
//  Feature.swift
//  Toolbox
//
//  Created by Dantong Jin on 2018/7/12.
//  Copyright © 2018 Dantong Jin. All rights reserved.
//

import Foundation
import UIKit

struct Feature {
  let title: String
  let icon: FeatureIcon
  let storyboard: FeatureStoryboard
}

enum FeatureIcon: String {
  case filter = "baseline_photo_filter_black_48pt"
}

enum FeatureStoryboard: String {
  case filter = "filter"
}

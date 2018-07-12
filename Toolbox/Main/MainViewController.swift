//
//  MainViewController.swift
//  Toolbox
//
//  Created by Dantong Jin on 2018/7/4.
//  Copyright © 2018 Dantong Jin. All rights reserved.
//

import UIKit
import Cards

class MainViewController: UICollectionViewController {
  
  private let numberOfColumns: CGFloat = 3.0
  private let features: [Feature] = [
    Feature(title: "滤镜", icon: .filter, storyboard: .filter)
  ]
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
      let space = (numberOfColumns - 1.0) * layout.minimumInteritemSpacing
      let itemWidth = (UIScreen.main.bounds.width - space) / numberOfColumns
      layout.itemSize = CGSize(width: itemWidth, height: itemWidth * 6 / 5)
    }
    
  }
  
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return features.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as? FeatureCollectionViewCell else {
      return UICollectionViewCell(frame: .zero)
    }
    
    let feature = features[indexPath.row]
    cell.configure(with: feature)
    
    return cell
  }
  
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let storyboardName = features[indexPath.row].storyboard.rawValue
    let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
    guard let viewController = storyboard.instantiateInitialViewController() else { return }
    present(viewController, animated: true, completion: nil)
  }
  
}


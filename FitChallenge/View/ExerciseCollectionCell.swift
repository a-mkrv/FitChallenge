//
//  ExerciseCollectionCell.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit

class ExerciseCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func blurEffect() {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = 0.35
        blurEffectView.backgroundColor = UIColor.clear
        blurEffectView.frame = self.categoryImage.bounds
        self.categoryImage.addSubview(blurEffectView)
    }
}

//
//  FoodCollectionViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit
import AMScrollingNavbar

class FoodCollectionViewController: UICollectionViewController {
    
    private let reuseIdentifier = "foodCell"
    var categories = [FoodCategory]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food".setTextSpaces(seperator: " ", afterEveryXChars: 1)

        loadCategories(allCategories: FoodCategoryArray as NSArray)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let navigationController = self.navigationController as? ScrollingNavigationController {
            navigationController.followScrollView(collectionView!, delay: 50.0)
        }
    }
    
    
    func loadCategories(allCategories: NSArray) {
        for category in allCategories {
            let newCategory = FoodCategory(name: (category as? String)!, photos: (category as? String)!)
            self.categories.append(newCategory)
        }
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FoodCollectionCell
        
        let category = categories[indexPath.row]
        
        cell.categoryLabel.text = category.name.setTextSpaces(seperator: " ", afterEveryXChars: 1)
        cell.categoryImage.image = UIImage(named: "\(category.image).jpg")
        
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width, height: 180);
    }
}

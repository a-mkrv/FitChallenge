//
//  ExerciseCollectionViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit
import AMScrollingNavbar

class ExerciseCollectionViewController: UICollectionViewController {
    
    let reuseIdentifier = "exerciseCell"
    var categories = [ExerciseCategory]()
    var sex = "g"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.backgroundColor = shortRGB(r: 37, g: 42, b: 48)
        title = "Exercises".setTextSpaces(seperator: " ", afterEveryXChars: 1)
        
        loadCategories(allCategories: ExerciseCategoryArray as NSArray)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let navigationController = self.navigationController as? ScrollingNavigationController {
            navigationController.followScrollView(collectionView!, delay: 50.0)
        }
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let navigationController = navigationController as? ScrollingNavigationController {
            navigationController.stopFollowingScrollView()
        }
    }
    
    
    override func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        if let navigationController = navigationController as? ScrollingNavigationController {
            navigationController.showNavbar(animated: true)
        }
        return true
    }
    
    
    func loadCategories(allCategories: NSArray) {
        for category in allCategories {
            let newCategory = ExerciseCategory(name: (category as? String)!, photos: (category as? String)!)
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ExerciseCollectionCell
        
        let category = categories[indexPath.row]
        
        cell.categoryLabel.text = category.name.setTextSpaces(seperator: " ", afterEveryXChars: 1)
        cell.categoryImage.image = UIImage(named: "\(sex)_\(category.image).jpg")
        
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width, height: 180);
    }
}

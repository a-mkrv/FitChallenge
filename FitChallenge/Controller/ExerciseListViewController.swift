//
//  ExerciseListViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ExerciseListViewController: UICollectionViewController {

    var loadedData = NSDictionary()
    var exerciseOfCategory = [Exercise]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        refractoring()
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

   
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return exerciseOfCategory.count
    }

    
    private func refractoring() {
        for (key , value)  in loadedData {
            let val = value as! [String]
            var ex = Exercise()
            ex.name = key as! String
            ex.type = val[0]
            ex.time = val[1]
            
            for i in 2..<val.count {
                ex.descript.append(val[i])
            }
            
            exerciseOfCategory.append(ex)
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exerciseCell", for: indexPath) as! DetailExerciseCollectionViewCell
        
        cell.imageOfExercise.layer.cornerRadius = 15.0
        cell.imageOfExercise.clipsToBounds = true
        
        cell.nameOfExercise.text = exerciseOfCategory[indexPath.row].name
        cell.typeOfExercise.text = exerciseOfCategory[indexPath.row].type
        cell.timeForTrening.text = exerciseOfCategory[indexPath.row].time
        
        return cell
    }
}

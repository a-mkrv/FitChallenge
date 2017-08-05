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
    var nameOfView: String!

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
            ex.image = val[2]
            
            for i in 3..<val.count {
                ex.descript.append(val[i])
            }
            
            exerciseOfCategory.append(ex)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = nameOfView.uppercased().setTextSpaces(seperator: " ", afterEveryXChars: 1)
        navigationItem.backBarButtonItem = backItem
        
        if segue.identifier == "goToDetailExercise" {
            if let destinationController = segue.destination as? DetailExerciseViewController {
                
                let selectedIndex = self.collectionView?.indexPath(for: sender as! UICollectionViewCell)?.row

                destinationController.typeEx = exerciseOfCategory[selectedIndex!].type
                destinationController.timeEx = exerciseOfCategory[selectedIndex!].time
                destinationController.stepByStep = exerciseOfCategory[selectedIndex!].descript
                destinationController.imagePath = exerciseOfCategory[selectedIndex!].image
            }
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exerciseCell", for: indexPath) as! DetailExerciseCollectionViewCell
        
        cell.imageOfExercise.layer.cornerRadius = 15.0
        cell.imageOfExercise.clipsToBounds = true
        
        let image: UIImage = UIImage(named: exerciseOfCategory[indexPath.row].image)!
        cell.imageOfExercise.image = image

        cell.nameOfExercise.text = exerciseOfCategory[indexPath.row].name
        cell.typeOfExercise.text = exerciseOfCategory[indexPath.row].type
        cell.timeForTrening.text = exerciseOfCategory[indexPath.row].time
        
        return cell
    }
}

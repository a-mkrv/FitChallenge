//
//  Exercise.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import Foundation
import CoreData

let ExerciseCategoryArray = ["press", "chest", "arms", "shoulders", "back", "legs"]

class ExerciseCategory {
    
    let name: String
    var image: String
    
    init(name: String, photos: String) {
        self.name = name
        self.image = photos
    }
}


struct Exercise {
    var name: String!
    var type: String!
    var time: String!
    //var image: String!
    var descript = [String]()
}

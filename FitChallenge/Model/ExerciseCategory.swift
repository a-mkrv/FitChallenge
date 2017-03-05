//
//  Exercise.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import Foundation

let ExerciseCategoryArray = ["chest", "arms", "shoulders", "back", "press", "legs"]

class ExerciseCategory {
    
    let name: String
    var image: String
    
    init(name: String, photos: String) {
        self.name = name
        self.image = photos
    }
    
}

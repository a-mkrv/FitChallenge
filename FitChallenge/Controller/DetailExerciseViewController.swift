//
//  DetailExerciseViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 03.08.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit

class DetailExerciseViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var time_count: UILabel!
    
    var stepByStep = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

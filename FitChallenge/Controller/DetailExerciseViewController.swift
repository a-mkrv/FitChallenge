//
//  DetailExerciseViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 03.08.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit

class DetailExerciseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var time_count: UILabel!
    @IBOutlet weak var stepByStepTable: UITableView!
    
    var imagePath: String!
    var typeEx: String!
    var timeEx: String!
    
    var stepByStep = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepByStepTable.delegate = self
        stepByStepTable.dataSource = self
        
        stepByStepTable.estimatedRowHeight = 100.0
        stepByStepTable.rowHeight = UITableViewAutomaticDimension
        
        let img: UIImage = UIImage(named: imagePath)!
        image.image = img
        image.clipsToBounds = true

        type.text = typeEx
        time_count.text = timeEx
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stepByStep.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailExCell", for: indexPath) as! StepByStepExTableViewCell
        cell.nameStep.text = stepByStep[indexPath.row]
        cell.numberImage.setImage(UIImage(named: "num\(indexPath.row + 1).png"), for: .normal)

        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

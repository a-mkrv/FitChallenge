//
//  StepByStepExTableViewCell.swift
//  FitChallenge
//
//  Created by Anton Makarov on 03.08.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit

class StepByStepExTableViewCell: UITableViewCell {

    @IBOutlet weak var nameStep: UILabel!
    
    @IBOutlet weak var numberImage: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

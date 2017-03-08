//
//  ChallengesViewController.swift
//  
//
//  Created by Anton Makarov on 08.03.17.
//
//

import UIKit

class ChallengesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Go Fit!".setTextSpaces(seperator: " ", afterEveryXChars: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//
//  MainTabBarViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 31.07.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController


class MainTabBarViewController: RAMAnimatedTabBarController {

    var sexOfPerson: Character = "b"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension MainTabBarViewController: UITabBarControllerDelegate {
}

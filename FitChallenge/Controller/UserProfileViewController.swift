//
//  UserProfileViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 08.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile".setTextSpaces(seperator: " ", afterEveryXChars: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

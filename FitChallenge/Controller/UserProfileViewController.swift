//
//  UserProfileViewController.swift
//  FitChallenge
//
//  Created by Anton Makarov on 08.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    var sexOfPerson = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.layer.borderWidth = 1
        profileImage.layer.masksToBounds = false
        profileImage.layer.borderColor = UIColor(red:  236/255.0, green: 236/255.0, blue: 236/255.0, alpha: 30.0/100.0).cgColor
        
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.clipsToBounds = true
       
        title = "Profile".setTextSpaces(seperator: " ", afterEveryXChars: 1)
    }
    
    
    @IBAction func setBoySex(_ sender: Any) {
        sexOfPerson = "boy"
        (self.tabBarController  as! MainTabBarViewController).sexOfPerson = sexOfPerson.characters.first!
    }
    
    
    @IBAction func setGirlSex(_ sender: Any) {
        sexOfPerson = "girl"
        (self.tabBarController  as! MainTabBarViewController).sexOfPerson = sexOfPerson.characters.first!
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

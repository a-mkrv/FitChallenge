//
//  ramtest.swift
//  Pods
//
//  Created by Anton Makarov on 08.03.17.
//
//

import UIKit
import RAMAnimatedTabBarController

open class RAMCustomAnimated : RAMBounceAnimation {
    override init() {
        super.init()
        iconSelectedColor = .white
        textSelectedColor = .white
    }
}

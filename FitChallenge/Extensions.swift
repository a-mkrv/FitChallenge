//
//  Extensions.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import Foundation
import UIKit

//////////////////////////////////////////////
// View Controller

extension String {
    func setTextSpaces(seperator: String, afterEveryXChars: Int) -> String {
        var output = ""
        self.characters.enumerated().forEach { index, c in
            if index % afterEveryXChars == 0 && index > 0 {
                output += seperator
            }
            output.append(c)
        }
        
        return output.uppercased()
    }
}

//////////////////////////////////////////////
// UIColor

func shortRGB(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
    return UIColor(red: r/255, green: g/255.0, blue: b/255.0, alpha: 100.0/100.0)
}





//
//  Extensions.swift
//  FitChallenge
//
//  Created by Anton Makarov on 05.03.17.
//  Copyright © 2017 Anton Makarov. All rights reserved.
//

import Foundation


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

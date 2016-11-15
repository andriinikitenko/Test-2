//
//  SimpleFish.swift
//  Test-2
//
//  Created by Andrii Nikitenko on 09.11.16.
//  Copyright © 2016 Andrii Nikitenko. All rights reserved.
//

import Foundation

class SimpleFish : NSObject {
    var weight : Int!
    var stringweight : String {
        get {
            return String(weight) + " КГ "
        }
    }
    
    convenience init(weight: Int) {
        self.init()
        self.weight = weight
    }
}


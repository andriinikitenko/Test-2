//
//  Blackganstafish.swift
//  Test-2
//
//  Created by Andrii Nikitenko on 09.11.16.
//  Copyright © 2016 Andrii Nikitenko. All rights reserved.
//

import Foundation
class Blackganstafish : SimpleFish {
    var  name : String!
    var fishcount = 0
    func eatotherfish(fish : SimpleFish) {
        weight = weight + fish.weight
        fishcount = fishcount + 1
    }
    
    convenience init(name: String) {
        self.init()
        self.weight = 10
        self.name = name
    }
}

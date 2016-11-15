//
//  Aqarium.swift
//  Test-2
//
//  Created by Andrii Nikitenko on 09.11.16.
//  Copyright © 2016 Andrii Nikitenko. All rights reserved.
//

import Foundation
class Aqarium : NSObject {
    var ganstafishes = [Blackganstafish]()
    var simplefishes = [SimpleFish]()
    
    override init() {
        super.init()
        let ganstaone = Blackganstafish.init(name: " Bob")
        let gansta2 = Blackganstafish.init(name: " Alex")
        ganstafishes.append(ganstaone)
        ganstafishes.append(gansta2)
    }
    
    func genratefishes(){
        let num = Int(arc4random_uniform(40) + 10)
        for _ in 1...num {
            let simplefishweight = Int(arc4random_uniform(8) + 1)
            let fish = SimpleFish.init(weight: simplefishweight)
            simplefishes.append(fish)
        }
    
    }
    func showfises() {
        print("Вага рибок в акваріумі ")
        for (index, fish) in simplefishes.enumerated() {
            print ("Рибка # " + String(index) + "; вага: " +  (fish.stringweight))
        }
    }
    func startfight() {
        while (simplefishes.count > 0){
            let index = Int(arc4random_uniform(UInt32(ganstafishes.count)))
            let currentganstafish = ganstafishes[index]
            
            let simpleindex = Int(arc4random_uniform(UInt32(simplefishes.count)))
            let currentsimplefish = simplefishes[simpleindex]
            
            currentganstafish.eatotherfish(fish: currentsimplefish)
            simplefishes.remove(at: simpleindex)
        }
    }
}




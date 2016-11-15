//
//  main.swift
//  Test-2
//
//  Created by Andrii Nikitenko on 09.11.16.
//  Copyright © 2016 Andrii Nikitenko. All rights reserved.
//


import Foundation

var aqarium = Aqarium()
aqarium.genratefishes()
aqarium.showfises()
aqarium.startfight()

var winner = aqarium.ganstafishes.first!
// Максимальний елементв массмв
for fish in aqarium.ganstafishes {
print(fish.name + " вага з'їдених ним риб: " + String(fish.weight - 10) + "КГ кількість зїдених риб: " + String(fish.fishcount))
    if fish.weight > winner.weight {
    winner = fish
    }
}
print (" Одержала перемогу риба" + winner.name)

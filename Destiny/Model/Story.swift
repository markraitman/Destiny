//
//  Story.swift
//  Destiny
//
//  Created by Марк Райтман on 03.02.2023.
//

import Foundation

struct Story {
    var title: String
    var choice1: String
    var choice2: String
    
    init(title: String, choice1: String, choice2: String) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
    }
    
}

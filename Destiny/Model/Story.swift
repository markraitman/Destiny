//
//  Story.swift
//  Destiny
//
//  Created by Марк Райтман on 03.02.2023.
//

import Foundation

struct Story {
    var title: String
    var choices: [String]
    
    init(title: String, choices: [String]) {
        self.title = title
        self.choices = choices
    }
    
}

//
//  subject.swift
//  Field Observation
//
//  Created by Jonathan Yee on 5/2/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import Foundation
enum species: String, Codable {
    case bird
    case amphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal
}


struct creature: Codable{
    let classification: species
    let title: String
    let description: String
    let date: Date
    
}

struct subject: Codable{
    var status: String
    var oberservations: [creature]
}

//
//  subjects.swift
//  Field Observation
//
//  Created by Jonathan Yee on 5/2/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import Foundation
enum classifications: String, Codable{
    case bird
    case amphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal
}

struct subject: Codable{
    var classification: classifications
    var title: String
    var description: String
    var date: Date
}

struct subjects: Codable{
    var status: String
    var observations: [subject]
}

//
//  creature.swift
//  Field Observation
//
//  Created by Jonathan Yee on 5/2/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import UIKit

enum creature: String {
    case bird,amphibian,reptile,insect,fish,plant,mammal
    
    var image: UIImage? {
        return UIImage(named: self.rawValue)
    }
}

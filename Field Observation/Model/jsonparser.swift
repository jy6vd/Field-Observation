//
//  jsonparser.swift
//  Field Observation
//
//  Created by Jonathan Yee on 5/2/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import Foundation

class jsonparser{
    class func load(jsonFileName: String) -> subjects? {
        var Subject: subjects?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            Subject = try? jsonDecoder.decode(subjects.self, from: jsonData)
        }
        
        return Subject
    }
}

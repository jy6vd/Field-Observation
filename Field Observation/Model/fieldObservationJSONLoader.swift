//
//  fieldObservationJSONLoader.swift
//  Field Observation
//
//  Created by Jonathan Yee on 5/2/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import Foundation

class fieldObservationJSONLoader{
    class func load(jsonFileName: String) -> subject? {
        var Subject: subject?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            print(jsonData)
            Subject = try? jsonDecoder.decode(subject.self, from: jsonData)
        }
        
        return Subject
    }
}

//
//  Hikes.swift
//  First App Tv
//
//  Created by islam Elshazly on 09/06/2020.
//  Copyright © 2020 Islam Elshazly. All rights reserved.
//

import Foundation

struct Hike {
    
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Islam El shazly", imageURL: "1", miles: 1),
            Hike(name: "Ahmed And Hatem", imageURL: "2", miles: 2),
            Hike(name: "Mohammed Elshazly", imageURL: "3", miles: 3)
        ]
    }
}

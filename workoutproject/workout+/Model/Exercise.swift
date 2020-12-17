//
//  Exercise.swift
//  workoutplus
//
//  Created by Dauren on 2020-12-05.
//  Copyright © 2020 Dauren. All rights reserved.
//

import Foundation

class Exercise {
    var name: String
    var category: String
    var sets: String
    var reps: String
    var weight: String
    
    
    init(data: JSON)
    {
        self.name = "\(data["name"].stringValue)"
        self.category = "\(data["category"].stringValue)"
        self.sets = "\(data["sets"].stringValue)"
        self.reps = "\(data["reps"].stringValue)"
        self.weight = "\(data["weight"].stringValue)"

    }
}

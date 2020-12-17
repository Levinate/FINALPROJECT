//
//  Category.swift
//  workoutplus
//
//  Created by Dauren on 2020-12-05.
//  Copyright © 2020 Dauren. All rights reserved.
//

import Foundation

struct Category {
    
    var categoryName: String
    var categoryId: String
    var duration: String
    var calories: String
    var imageName: String
    var icon: String
    var exercises: [JSON]
    
    init(data: JSON)
    {
        self.categoryName = "\(data["category_name"].stringValue)"
        self.categoryId = "\(data["category_id"].stringValue)"
        self.duration = "\(data["duration"].stringValue)"
        self.calories = "\(data["calories"].stringValue)"
        self.imageName = "\(data["image"].stringValue)"
        self.icon = "\(data["icon"].stringValue)"
        self.exercises = data["exercises"].arrayValue
    }
}

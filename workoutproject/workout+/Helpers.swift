//
//  Helpers.swift
//  workoutplus
//
//  Created by Dauren on 2020-12-05.
//  Copyright © 2020 Dauren. All rights reserved.
//

import Foundation


    
    // Code snippet source: https://www.knowband.com/blog/tutorials/read-data-local-json-file-swift/
    public func readJSONFromFile(fileName: String) -> JSON?
    {
        var jsonData: JSON = nil
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let fileUrl = URL(fileURLWithPath: path)
                // Getting data from JSON file using the file URL
                let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                jsonData = JSON(data)
            } catch {
                // Handle error here
                print("Unable to read JSON from file")
            }
        }
        return jsonData
    }


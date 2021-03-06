//
//  CategoryViewController.swift
//  workoutplus
//
//  Created by Dauren on 2020-12-05.
//  Copyright © 2020 Dauren. All rights reserved.
//

import UIKit

class CategoryViewController: UITableViewController {
    
    var categories: [Category]?

    override func viewDidLoad() {
        loadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let category = categories?[indexPath.row] {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
                cell.workoutTypeLabel.text = category.categoryName
                cell.categoryImage.image = UIImage(named: category.imageName)
                return cell
            }
        }
        
        return UITableViewCell()
    }


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ExerciseViewController, let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) {
            
            var exercises = [Exercise]()
            for exercise in categories![indexPath.row].exercises {
                exercises.append(Exercise(data: exercise))
            }
            destination.exercises = exercises
            destination.categoryName = categories![indexPath.row].categoryName
            destination.imageName = categories![indexPath.row].imageName
            destination.duration = categories![indexPath.row].duration
            destination.calories = categories![indexPath.row].calories
            
        }
        
    }
    
    
    // MARK: - Helper functions
    
    func loadData()
    {
        var categoryData: JSON?
        self.categories = [Category]()
        categoryData = readJSONFromFile(fileName: "workout_data")
            
            if let category = categoryData {
                for (_, json) in category {
                    self.categories?.append(Category(data: json))
                }
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
    }
    
}

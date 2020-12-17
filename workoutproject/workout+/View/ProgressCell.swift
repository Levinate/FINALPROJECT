//
//  ProgressCell.swift
//  workoutplus
//
//  Created by Dauren on 2020-12-05.
//  Copyright © 2020 Dauren. All rights reserved.
//

import UIKit

class ProgressCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var workoutTypeLabel: UILabel!
    @IBOutlet weak var workoutCountLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

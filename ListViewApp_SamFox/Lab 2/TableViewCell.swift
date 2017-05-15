//
//  TableViewCell.swift
//  Lab 2
//
//  Created by samfo on 5/11/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var playerImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

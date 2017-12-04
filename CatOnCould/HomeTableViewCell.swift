//
//  TableViewCell.swift
//  CatOnCould
//
//  Created by Yang Yi  on 25/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var colorFieldLabel: UILabel!
    @IBOutlet weak var nameFieldLabel: UILabel!
    @IBOutlet weak var typeFieldLabel: UILabel!
    
    override func awakeFromNib() {
    
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

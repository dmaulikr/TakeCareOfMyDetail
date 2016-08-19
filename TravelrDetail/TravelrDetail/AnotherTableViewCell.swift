//
//  AnotherTableViewCell.swift
//  TravelrDetail
//
//  Created by 이우재 on 2016. 8. 19..
//  Copyright © 2016년 LEE. All rights reserved.
//

import UIKit

class AnotherTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

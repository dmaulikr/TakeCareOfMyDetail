//
//  HitterTableViewCell.swift
//  LingostarDetail
//
//  Created by Lingostar on 2016. 8. 19..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import UIKit

class HitterTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var averageLabel: UILabel!
    
    @IBOutlet weak var teamNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  TableViewCell.swift
//  Core Animation
//
//  Created by Abul Kashem on 23/2/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var animationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

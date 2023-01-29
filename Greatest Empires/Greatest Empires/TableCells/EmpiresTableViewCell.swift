//
//  EmpiresTableViewCell.swift
//  Greatest Empires
//
//  Created by user229720 on 17.11.2022.
//

import UIKit

class EmpiresTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var empireNameLabel: UILabel!
    
    @IBOutlet weak var flagImageView: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

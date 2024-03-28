//
//  CustomTableViewCell.swift
//  SuperHeroes
//
//  Created by Miguel on 26/3/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var nombreReal: UILabel!
    
    @IBOutlet weak var cover: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  CharacterCell.swift
//  GOW_Complete
//
//  Created by Lex Santos on 12/03/25.
//

import UIKit

class CharacterCell: UITableViewCell {
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var cImage: UIImageView!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        cLabel.font = UIFont(name: "CGFLocustResistance", size: 16.0)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

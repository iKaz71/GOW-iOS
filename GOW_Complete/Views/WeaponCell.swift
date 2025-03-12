//
//  WeaponCell.swift
//  GOW_Complete
//
//  Created by Lex Santos on 08/03/25.
//

import UIKit

class WeaponCell: UITableViewCell {

    @IBOutlet var lblName: UILabel!
    
    @IBOutlet var imgWeapon: UIImageView!
    
    @IBOutlet var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

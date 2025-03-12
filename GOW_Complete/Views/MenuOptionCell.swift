//
//  MenuOptionCell.swift
//  GOW_Complete
//
//  Created by Lex Santos on 08/03/25.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    @IBOutlet var lblMenu: UILabel!
    
    @IBOutlet var imgMenu: UIImageView!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        lblMenu.customFont(fontFamily: "CGF Locust Resistance", fontSize: 17, fontStyle: .title1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

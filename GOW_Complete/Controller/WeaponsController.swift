//
//  WeaponsController.swift
//  GOW_Complete
//
//  Created by Lex Santos on 08/03/25.
//

import UIKit

class WeaponsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrayWeapons : [Weapon] = []
    
    var topHeader : String = "headerGOW"

    @IBOutlet var imgTopHeader: UIImageView!
    
    @IBOutlet var tblGOW: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgTopHeader.image = UIImage(named: topHeader)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! WeaponCell
        
        cell.lblName.text = arrayWeapons[indexPath.row].name.localized(withComment: "Name of the weapon")
        
        cell.lblName.customFont(fontFamily: "CGF Locust Resistance", fontSize: 20, fontStyle: .title1)
        
        cell.lblDescription.text = arrayWeapons[indexPath.row].description.localized(withComment: "Description of the weapon")
        
        cell.lblDescription.customFont(fontFamily: "Roboto", fontSize: 17, fontStyle: .body)
        
        cell.imgWeapon.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        
        return cell
    }
}

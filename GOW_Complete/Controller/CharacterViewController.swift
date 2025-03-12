//
//  CharacterViewController.swift
//  GOW_Complete
//
//  Created by Lex Santos on 12/03/25.
//

import UIKit

class CharacterViewController: UIViewController {
    
    
    @IBOutlet weak var cTable: UITableView!
    let characterList: [Characters] = [
        Characters(image: "Marcus", name: "Marcus Michael Fenix"),
        Characters(image: "RAAM", name: "RAAM"),
        Characters(image: "Anya", name: "Anya Stroud"),
        Characters(image: "Dominc", name: "Dominc Santiago"),
        Characters(image: "Daimon", name: "Daimon Baird"),
        Characters(image: "Augustus", name: "Augustus Cole"),
        Characters(image: "Anthony", name: "Anthony Carmine"),
        Characters(image: "Minh", name: "Minh Young Kim")
    ]
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewDidLoad() {
        
        super.viewDidLoad()
        cTable.dataSource = self
        cTable.delegate = self
        
        // Do any additional setup after loading the view.
    }

    
}

extension CharacterViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cTableCell", for: indexPath) as! CharacterCell
        cell.cLabel?.text = characterList[indexPath.row].name
        cell.cImage.image = UIImage(named: "\(characterList[indexPath.row].image)")
        return cell
    }
    
}

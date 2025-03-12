//
//  TabBarController.swift
//  GOW_Complete
//
//  Created by Lex Santos on 08/03/25.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setTabBarItems()
    }
    
    func setTabBarItems() {
        let myTabBarItem0 = (self.tabBar.items?[0])! as UITabBarItem
        myTabBarItem0.image = UIImage(systemName:  "gearshape.fill")
        myTabBarItem0.selectedImage = UIImage(systemName: "gearshape.fill")
        myTabBarItem0.title = "CGO"

        let myTabBarItem1 = (self.tabBar.items?[1])! as UITabBarItem
        myTabBarItem1.image = UIImage(systemName: "bolt.fill")
        myTabBarItem1.selectedImage = UIImage(systemName: "bolt.fill")
        myTabBarItem1.title = "Locus"
    }
}

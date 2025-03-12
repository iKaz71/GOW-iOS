//
//  GamesController.swift
//  GOW_Complete
//
//  Created by Lex Santos on 08/03/25.
//

import UIKit

class GamesController: UIViewController {
    
    @IBOutlet var coverImage: UIImageView!
    
    @IBOutlet var coverPageControl: UIPageControl!
    
    
    
    // Get the array dynamically, no hardcoded
    let gameCovers = Array(0...7)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        coverPageControl.numberOfPages = gameCovers.count
        coverImage.image = UIImage(named: String(gameCovers.first!))
        coverPageControl.addTarget(self, action: #selector(pageControlChanged(_:)), for: .valueChanged)
        updateGowIndicator()
        
        
    }
    
    @IBAction func rightSwipeGestureDone(_ sender: Any) {
        print("right swipe")
        if coverPageControl.currentPage == 0  {
            coverPageControl.currentPage = 7
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
        else{
            coverPageControl.currentPage = coverPageControl.currentPage - 1
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
        updateGowIndicator()
    }
    
    @IBAction func leftSwipeGestureDone(_ sender: Any) {
        print("left swipe")
        if coverPageControl.currentPage == 7  {
            coverPageControl.currentPage = 0
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
        else{
            coverPageControl.currentPage = coverPageControl.currentPage + 1
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
        updateGowIndicator()
    }
    
    @IBAction func onCoverChanged(_ sender: Any) {
        coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
    }
    
    
    func updateGowIndicator() {
        updateIndicators()
        coverImage.image = UIImage(named: "\(gameCovers[coverPageControl.currentPage])")
    }

    @objc func pageControlChanged(_ sender: UIPageControl) {
        coverImage.image = UIImage(named: "\(gameCovers[coverPageControl.currentPage])")
        updateIndicators()
    }

    private func updateIndicators() {
        (0..<coverPageControl.numberOfPages).forEach { index in
            let indicatorImage = UIImage(named: (index == coverPageControl.currentPage) ? "gow_logo" : "defaultIndicator")
            coverPageControl.setIndicatorImage(indicatorImage, forPage: index)
        }
    }


}

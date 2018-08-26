//
//  HomeScreenVC.swift
//  diversify
//
//  Created by Sebastian Crossa on 8/26/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit

class HomeScreenVC: UIViewController {
    
    @IBOutlet weak var experienceCollectionView: UICollectionView!
    
    var experiences = Experience.fetchExperiences()
    let cellScaling: CGFloat = 6.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = CGFloat(319)
        let cellHeight = CGFloat(255)
        
        let insetX = (view.bounds.width - cellWidth)
        let insetY = (view.bounds.height - cellHeight)
        
        let layout = experienceCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        experienceCollectionView.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        */
        
        experienceCollectionView?.dataSource = self
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

extension HomeScreenVC: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return experiences.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = experienceCollectionView.dequeueReusableCell(withReuseIdentifier: "experienceCell", for: indexPath) as! ExperienceCell
        
        cell.experience = experiences[indexPath.item]
        return cell
    }
}

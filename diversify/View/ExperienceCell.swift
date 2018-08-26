//
//  ExperienceCell.swift
//  diversify
//
//  Created by Sebastian Crossa on 8/26/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit

class ExperienceCell: UICollectionViewCell {
    
    @IBOutlet weak var experienceImage: UIImageView!
    @IBOutlet weak var experienceTitle: UILabel!
    @IBOutlet weak var experienceDescription: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var experience: Experience? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let experience = experience {
            experienceImage.image = UIImage(named: "experiencia1")
            experienceTitle.text = "Preparar tacos en una carreta"
            experienceDescription.text = "Tienes la oportunidad de vivir una de las expriencias más cercanas a México posible, junto con un completo profesional de tacos."
        } else {
            experienceImage.image = nil
            experienceTitle.text = nil
            experienceDescription.text = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        self.clipsToBounds = true
    }
    
    @IBAction func contratarButtonWasPressed(_ sender: Any) {
        
    }
    
}

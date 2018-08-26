//
//  Experience.swift
//  diversify
//
//  Created by Sebastian Crossa on 8/26/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit

class Experience {
    var title = ""
    var description = ""
    var image: UIImage
    
    init(title: String, image: UIImage, description: String) {
        self.title = title
        self.image = image
        self.description = description
    }
    
    /*
    static func fetchExperiences() -> [Experience]
    {
        return [
            Experience(title: "Preparación de tacos en una carreta", image: UIImage(named: "experiencia1")!, description: "Tienes la oportunidad de vivir una de las expriencias más cercanas a Méxic posible, junto con un completo profesional de tacos."),
            Experience(title: "Clases de aplicación de henna", image: UIImage(named: "experiencia1")!, description: "Aprende sobre cómo surgió este tatuaje a base de plantas, su impacto cultural a lo largo de los años y cómo aplicarlo correctamente"),
            Experience(title: "Crea una artesania propia de Guatemala", image: UIImage(named: "experiencia1")!, description: "La artesania de Guatemala es una parte fundamental para la belleza Latinoamerica."),
        ]
    }
 */
}

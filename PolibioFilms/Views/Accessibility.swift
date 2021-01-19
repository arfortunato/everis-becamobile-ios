//
//  Accessibility.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 19/01/21.
//

import Foundation

extension ShowDetailsViewController{
    
    func setupAccessibility(){

        labelTItuloShowDetails.accessibilityTraits = .header
        bannerFilme.accessibilityTraits = .image
        
        self.accessibilityElements = [bannerFilme, labelTItuloShowDetails, labelDescricaoShowDetais, avaliacaoFilme]
    }
    
}

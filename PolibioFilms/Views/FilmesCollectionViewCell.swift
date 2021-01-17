//
//  FilmesCollectionViewCell.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 09/01/21.
//

import UIKit
import AlamofireImage

class FilmesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var capaFilme: UIImageView!
    
    
    func configCell(_ movie: Movie){
        
        guard let poster = movie.posterPath else {return}
        MovieService().getImage(poster) { (posterPath) in
            self.capaFilme.image = posterPath
        }
        }
    

}

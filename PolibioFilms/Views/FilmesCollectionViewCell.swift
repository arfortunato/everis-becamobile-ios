//
//  FilmesCollectionViewCell.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 09/01/21.
//

import UIKit
import AlamofireImage

class FilmesCollectionViewCell: UICollectionViewCell {
    
    var mainViewModel: MainViewModel!{
        
        didSet{
            
            guard let posterPathURL = URL(string: "https://image.tmdb.org/t/p/w185\(mainViewModel.posterPath)") else {return}
            capaFilme.af_setImage(withURL: posterPathURL)
            capaFilme.layer.cornerRadius = 10
            capaFilme.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var capaFilme: UIImageView!
    

}

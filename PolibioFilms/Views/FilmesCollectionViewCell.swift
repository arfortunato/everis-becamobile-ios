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
        }
    }
    
    @IBOutlet weak var capaFilme: UIImageView!
    

}

//
//  ShowDetailsViewController.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 09/01/21.
//

import UIKit
import AlamofireImage

class ShowDetailsViewController: UIViewController {

    @IBOutlet weak var labelTItuloShowDetails: UILabel!
    @IBOutlet weak var ImagemFilme: UIImageView!
    @IBOutlet weak var labelDescricaoShowDetais: UILabel!
    @IBOutlet weak var avaliacaoFilme: UILabel!
    @IBOutlet weak var bannerFilme: UIImageView!
    
    var movieSelected :Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCell()
    }
    
    func configCell(){
        
        self.labelTItuloShowDetails.text = movieSelected?.title ?? movieSelected?.name
        self.labelDescricaoShowDetais.text = movieSelected?.overview
        let voteAverage = movieSelected?.voteAverage
        let voteAverageFormatada = String(format: "%.2f", voteAverage!)
        self.avaliacaoFilme.text = voteAverageFormatada
        
        let backdrop = movieSelected?.backdropPath
        if let urlBackdrop = URL(string: "https://image.tmdb.org/t/p/w185\(backdrop!)")
            {
            self.ImagemFilme!.af_setImage(withURL: urlBackdrop)
            self.ImagemFilme.layer.cornerRadius = 10
            self.ImagemFilme.layer.masksToBounds = true
            }
        else{
            print("error")
        }
    }

    @IBAction func buttonvoltar(_ sender: UIButton) {
        if let navigation = navigationController{
            navigation.popViewController(animated: true)
            
        }
    
    }

}


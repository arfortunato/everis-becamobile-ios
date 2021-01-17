////
////  ShowDetailsViewController.swift
////  PolibioFilms
////
////  Created by Artur Rodrigues Fortunato on 09/01/21.
////
//
//import UIKit
//import AlamofireImage
//
//class ShowDetailsViewController: UIViewController {
//
//    @IBOutlet weak var labelTItuloShowDetails: UILabel!
//    @IBOutlet weak var ImagemFilme: UIImageView!
//    @IBOutlet weak var labelDescricaoShowDetais: UILabel!
//    @IBOutlet weak var avaliacaoFilme: UILabel!
//    @IBOutlet weak var bannerFilme: UIImageView!
//    
//    let movieSelected: MainViewModel
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configCell()
//    }
//    
//    func configCell(){
//        
//        self.labelTItuloShowDetails.text = movieSelected.movie?.title ?? movieSelected.movie?.name
//        self.labelDescricaoShowDetais.text = movieSelected.movie?.overview
//        let voteAverage = movieSelected.movie?.voteAverage
//        let voteAverageFormatada = String(format: "%.2f", voteAverage!)
//        self.avaliacaoFilme.text = voteAverageFormatada
//        
//        let backdrop = movieSelected.movie?.backdropPath
//        if let urlBackdrop = URL(string: "https://image.tmdb.org/t/p/w185\(backdrop!)")
//            {
//            self.ImagemFilme!.af_setImage(withURL: urlBackdrop)
//            self.ImagemFilme.layer.cornerRadius = 10
//            self.ImagemFilme.layer.masksToBounds = true
//            }
//        else{
//            print("error")
//        }
//    }
//
//    @IBAction func buttonvoltar(_ sender: UIButton) {
//        if let navigation = navigationController{
//            navigation.popViewController(animated: true)
//            
//        }
//    
//    }
//
//}
//

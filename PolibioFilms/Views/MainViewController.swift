//
//  ViewController.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 09/01/21.
//

import UIKit
import Alamofire
import AlamofireImage

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


    @IBOutlet weak var filmesCollectionView: UICollectionView!
    
    var movies: [Movie] = []
    var imagemDoBanner:UIImage?
    
    let client: MovieServiceProtocol = MovieService()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        filmesCollectionView.dataSource = self
        filmesCollectionView.delegate = self
        
        client.getMovie {(movie) in
            self.movies = movie
            self.filmesCollectionView.reloadData()
        }
    }
    

    //MARK: - Editando Collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaFilme = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! FilmesCollectionViewCell
        
        let posterPathURL = URL(string: "https://image.tmdb.org/t/p/w185\(movies[indexPath.row].posterPath)")
        celulaFilme.capaFilme.af_setImage(withURL: (posterPathURL)!)
        celulaFilme.layer.cornerRadius = 10
        celulaFilme.layer.masksToBounds = true
        return celulaFilme
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return UIDevice.current.userInterfaceIdiom == .phone ? CGSize(width: collectionView.bounds.width/3-10, height: 150) : CGSize(width: collectionView.bounds.width/5-10, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let filmeSelecionado = movies[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "showDetails") as! ShowDetailsViewController
        
        controller.movieSelected = filmeSelecionado
      
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
    

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

//    var movieList:[Movie] = []
//    var posterPath: String?
    var viewModel: MainViewModel = MainViewModel()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        filmesCollectionView.dataSource = self
        filmesCollectionView.delegate = self
        bind()
        viewModel.loadMovie()
        
        //self.filmesCollectionView.reloadData()
//        MovieService().getMovie { (movieList) in
//            //self.viewModel = movieList
//            self.filmesCollectionView.reloadData()
//        }
    }
    
    func bind(){
        viewModel.viewData.bind { (viewData) in
            self.filmesCollectionView.reloadData()
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.count()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! FilmesCollectionViewCell
        
        let filmeAtual = viewModel.item()[indexPath.item]
        celulaPacote.configCell(movie: filmeAtual)
//        celulaPacote.backgroundColor = .red
        
//        guard let posterUrl = filmeAtual.posterPath else { return celulaPacote }
//        MovieService().getImage(posterUrl) { (imagem) in
//            celulaPacote.capaFilme.image = imagem
//        }
        
        return celulaPacote
    }
    
}


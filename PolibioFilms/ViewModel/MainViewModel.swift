//
//  MainViewModel.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 16/01/21.
//

import Foundation

protocol MainViewModelDelegate {
    func reloadData(movie: MainViewData)
}

class MainViewModel {
    
    // MARK: - Properts
    private let client: MovieServiceProtocol
    var viewData: Bindable<MainViewData?> = Bindable(nil)
    var delegate: MainViewModelDelegate?
    private var movies: [Movie] = []
    var contador: Int = 0

    init(client: MovieServiceProtocol = MovieService()){
        self.client = client
    }
    
    func loadMovie(){
        client.getMovie { (movie) in
            self.movies = movie
            self.viewData.value = MainViewData(model: movie)

        }
    }
    
    func count() -> Int{
        self.contador = movies.count
        return contador
    }
    
    func item() -> [Movie] {
        let filme = self.movies
        return filme
    }
    
    
    
    // MARK: - Methods
    func loadImage() {
        client.getMovie { (movie) in
            self.delegate?.reloadData(movie: MainViewData(model: self.movies))
            
        }
        
    }
}

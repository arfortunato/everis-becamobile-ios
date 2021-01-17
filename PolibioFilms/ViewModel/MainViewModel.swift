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
    private let client: MovieServiceProtocol = MovieService()
    var viewData: Bindable<MainViewData?> = Bindable(nil)
    var delegate: MainViewModelDelegate?
    private var movies: [Movie] = []

    
    
    // MARK: - Methods
    func loadImage() {
        client.getMovie { (movie) in
            self.delegate?.reloadData(movie: MainViewData(models: self.movies))
        }
        
    }
}

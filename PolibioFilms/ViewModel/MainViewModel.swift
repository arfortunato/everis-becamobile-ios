//
//  MainViewModel.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 18/01/21.
//

import Foundation

struct MainViewModel{
    let posterPath: String
    let backdropPath: String
    let title: String
    let name: String
    let overview: String
    let voteAverage: Double

    init(movie: Movie){
        self.posterPath = movie.posterPath ?? ""
        self.backdropPath = movie.backdropPath ?? ""
        self.title = movie.title ?? ""
        self.name = movie.name ?? ""
        self.overview = movie.overview ?? ""
        self.voteAverage = movie.voteAverage
    }
}

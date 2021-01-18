//
//  MainViewModel.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 18/01/21.
//

import Foundation

struct MainViewModel{
    let posterPath: String
    
    init(poster: Movie){
        self.posterPath = poster.posterPath
    }
}

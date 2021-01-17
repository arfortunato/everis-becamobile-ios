//
//  MainViewData.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 16/01/21.
//

protocol MovieViewDataType {
    var movies: [Movie] {get}
}


class MainViewData{
    
    private let models: [Movie]
    
    init(models: [Movie]){
        self.models = models
    }
}


extension MainViewData: MovieViewDataType{
    var movies: [Movie]{
        return models
    }
}

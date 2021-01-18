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
    
    private let model: [Movie]
    
    init(model: [Movie]){
        self.model = model
    }
}


extension MainViewData: MovieViewDataType{
    var movies: [Movie]{
        return model
    }
}

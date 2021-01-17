//
//  ReceberAPI.swift
//  PolibioFilms
//
//  Created by Artur Rodrigues Fortunato on 07/01/21.
//

import Foundation
import Alamofire


protocol MovieServiceProtocol {
    func getMovie(completionHandler: @escaping ([Movie]) -> Void)
    func getImage(_ imagePath: String, completionHandler: @escaping(_ posterPath: UIImage) -> Void)
}


class MovieService: MovieServiceProtocol {
    
    private let urlAPI = "https://api.themoviedb.org/3/trending/all/week?api_key="
    private let urlPosterPath = "https://image.tmdb.org/t/p/w185"
    private let token = "4c952a66aec922c199eb9a89786edb85"
    private var language = "&language=pt-BR"

    
    func getMovie(completionHandler: @escaping ([Movie]) -> Void) {
        guard let urlApi = URL(string: "\(urlAPI)\(token)\(language)") else {return}
        Alamofire.request(urlApi, method: .get).responseJSON { (response) in
            if let data = response.data{
                do{
                    let decoder = JSONDecoder()
                    let filmesResposta = try decoder.decode(Movies.self, from: data)
                    completionHandler(filmesResposta.results)
                }
                catch let error{
                    print(error)
                }
            }
        }
    }
    
    func getImage(_ imagePath: String, completionHandler: @escaping(_ posterPath: UIImage) -> Void){
        guard let urlApi = URL(string: "\(urlPosterPath)\(imagePath)") else {return}
        Alamofire.request(urlApi, method: .get).responseImage { (response) in
            
            switch response.result{
            case .success:
                if let posterPath = response.result.value {
                    completionHandler(posterPath)
                }
                break
            case .failure:
                print(response.error!)
                break
            }
            
        }
    }
}

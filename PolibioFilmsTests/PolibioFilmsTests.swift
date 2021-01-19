//
//  PolibioFilmsTests.swift
//  PolibioFilmsTests
//
//  Created by Artur Rodrigues Fortunato on 18/01/21.
//

import XCTest
@testable import PolibioFilms

class PolibioFilmsTests: XCTestCase {
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {

    }
    }
    
    func testMovieService(){
      
        let movie = Movie(voteAverage: 0.0, title: "title", overview: "overview", releaseDate: "releaseDate", adult: true, backdropPath: "backdropPath", genreIDS: [0], voteCount: 0, originalLanguage: OriginalLanguage(rawValue: "en"), originalTitle: "originalTitle", posterPath: "posterPath", id: 0, video: true, popularity: 0.0, mediaType: MediaType(rawValue: "movie"), firstAirDate: "firstAirDate", name: "name", originCountry: ["originCountry"], originalName: "originalName")
        let movies = Movies(page: 0, results: [movie], totalPages: 0, totalResults: 0)
        XCTAssertNotNil(movie)
        XCTAssertNotNil(movies)
    }

    func testAPI(){
        
        MovieService().getMovie { (movie) in
            XCTAssertEqual(20, movie.count)
        }
        
    }
        
        
}

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
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMainViewModel(){
        var movie = Movie(voteAverage: 0.0, title: "title", overview: "title", releaseDate: "title", adult: true, backdropPath: "title", genreIDS: [0], voteCount: 0, originalLanguage: OriginalLanguage(rawValue: "en"), originalTitle: "title", posterPath: "title", id: 0, video: true, popularity: 0.0, mediaType: MediaType(rawValue: "movie"), firstAirDate: "title", name: "title", originCountry: ["title"], originalName: "title")
        XCTAssertNotNil(movie)
    }

}

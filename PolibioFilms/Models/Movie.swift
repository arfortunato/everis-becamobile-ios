import Foundation

// MARK: - Movies
class Movies: Codable {
//    let page: Int
    let results: [Movie]
//    let totalPages, totalResults: Int
    
    init(results: [Movie]) {
//        self.page = page
        self.results = results
//        self.totalPages = totalPages
//        self.totalResults = totalResults
    }
}

// MARK: - Result
class Movie: Codable {
    let voteAverage: Double?
    let title: String?
    let overview: String?
    let backdropPath: String?
    let posterPath: String?
    let name: String?

    init(voteAverage: Double?, title: String?, overview: String?, backdropPath: String?, posterPath: String?, name: String?) {
        self.voteAverage = voteAverage
        self.title = title
        self.overview = overview
        self.backdropPath = backdropPath
        self.posterPath = posterPath
        self.name = name

    }
}

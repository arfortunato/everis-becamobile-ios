import Foundation

// MARK: - Movies
struct Movies: Codable {
    let page: Int
    let results: [Movie]
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
    
    init(page: Int, results: [Movie], totalPages: Int, totalResults: Int) {
        self.page = page
        self.results = results
        self.totalPages = totalPages
        self.totalResults = totalResults
    }
}

// MARK: - Result
struct Movie: Codable {
    let voteAverage: Double
    let title: String?
    let overview: String
    let releaseDate: String?
    let adult: Bool?
    let backdropPath: String
    let genreIDS: [Int]
    let voteCount: Int
    let originalLanguage: OriginalLanguage
    let originalTitle: String?
    let posterPath: String
    let id: Int
    let video: Bool?
    let popularity: Double
    let mediaType: MediaType
    let firstAirDate, name: String?
    let originCountry: [String]?
    let originalName: String?
    
    enum CodingKeys: String, CodingKey {
        case voteAverage = "vote_average"
        case title, overview
        case releaseDate = "release_date"
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case voteCount = "vote_count"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case id, video, popularity
        case mediaType = "media_type"
        case firstAirDate = "first_air_date"
        case name
        case originCountry = "origin_country"
        case originalName = "original_name"
    }
    
    init(voteAverage: Double, title: String?, overview: String, releaseDate: String?, adult: Bool?, backdropPath: String, genreIDS: [Int], voteCount: Int, originalLanguage: OriginalLanguage, originalTitle: String?, posterPath: String, id: Int, video: Bool?, popularity: Double, mediaType: MediaType, firstAirDate: String?, name: String?, originCountry: [String]?, originalName: String?) {
        self.voteAverage = voteAverage
        self.title = title
        self.overview = overview
        self.releaseDate = releaseDate
        self.adult = adult
        self.backdropPath = backdropPath
        self.genreIDS = genreIDS
        self.voteCount = voteCount
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.posterPath = posterPath
        self.id = id
        self.video = video
        self.popularity = popularity
        self.mediaType = mediaType
        self.firstAirDate = firstAirDate
        self.name = name
        self.originCountry = originCountry
        self.originalName = originalName
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case fr = "fr"
    case ja = "ja"
}

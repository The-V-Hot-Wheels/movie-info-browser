//
//  MovieService.swift
//  MovieInfoBrowser
//
//  Created by Alonso del Arte on 5/7/24.
//

import Foundation

@MainActor
class MovieService : ObservableObject {
    
    @Published var movies: [Movie] = []
    
    // TODO: Write tests for this
    static func stripOutWrapper(_ input: Data) -> Data {
        input
    }
    
    func getMovies(title: String) async throws {
        let url = URL(string: "https://www.omdbapi.com/?t=\(title)&apikey=\(movieAPIKey)")
        let (data, _) = try await URLSession.shared.data(from: url!)
        let decoder = JSONDecoder()
        let movie = try decoder.decode(Movie.self, from: data)
        movies.insert(movie, at: 0)
    }
    
}

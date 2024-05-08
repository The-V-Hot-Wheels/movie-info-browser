//
//  MovieService.swift
//  MovieInfoBrowser
//
//  Created by Alonso del Arte on 5/7/24.
//

import Foundation

class MovieService : ObservableObject {
    
    @Published var movies: [Movie] = []
    
    func getMovies(imdbID: String) async throws {
        let url = URL(string: "https://www.omdbapi.com/?i=tt\(imdbID)&apikey=\(movieAPIKey)")
        let (data, _) = try await URLSession.shared.data(from: url!)
        let decoder = JSONDecoder()
        let movie = try decoder.decode(Movie.self, from: data)
        movies.append(movie)
    }
    
}

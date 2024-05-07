//
//  MovieService.swift
//  MovieInfoBrowser
//
//  Created by Alonso del Arte on 5/7/24.
//

import Foundation

class MovieService : ObservableObject {
    
    @Published var movies: [Movie] = []
    
    func getMovies() async throws {
        let url = URL(string: "https://random-data-api.com/api/v2/credit_cards?size=5")
        let (data, _) = try await URLSession.shared.data(from: url!)
        let decoder = JSONDecoder()
        movies = try decoder.decode([Movie].self, from: data)
    }
    
}

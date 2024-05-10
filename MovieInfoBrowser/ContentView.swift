//
//  ContentView.swift
//  MovieInfoBrowser
//
//  Created by Alonso del Arte on 5/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var service = MovieService()
    
    static private let firstMovieID = "0119654"
    
    @State private var movieID = ""
    
//    @State private var movie: Movie = Movie(id: 1, imdbID: "0119654", title: "Men in Black", mpaRating: "PG-13", writer: "Lowell Cunningham, Ed Solomon", director: "Barry Sonnenfeld", plot: "James, an NYC cop, is hired by Agent K of a secret government agency that monitors extraterrestrial life on Earth. Together, they must recover an item that has been stolen by an intergalactic villain.")
    
    var body: some View {
        VStack {
            HStack {
                Text("Search by title")
                TextField("e.g., Star Trek 4", text: $movieID).onSubmit {
                    Task {
                        do {
                            try await service.getMovies(title: movieID)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            VStack {
                List(service.movies) { movie in
                    Text(movie.Title).font(.largeTitle)
                    if (movie.Poster != "N/A") {
                        AsyncImage(url: URL(string: movie.Poster))
                    }
                    Text(movie.Rated)
                    Text(movie.Director).font(.subheadline)
                    Text(movie.Writer).font(.subheadline)
                    Text(movie.Plot).font(.footnote)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

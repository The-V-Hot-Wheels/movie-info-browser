//
//  Movie.swift
//  MovieInfoBrowser
//
//  Created by Alonso del Arte on 5/7/24.
//

import Foundation

struct Movie : Decodable, Identifiable {
    
    var id: String { imdbID }
    
    let imdbID: String
    
    let Title: String
    
    let Rated: String
    
    let Writer: String
    
    let Director: String
    
    let Poster: String
    
    let Plot: String
    
}

//
//  Movie.swift
//  MovieInfoBrowser
//
//  Created by Alonso del Arte on 5/7/24.
//

import Foundation

struct Movie : Decodable, Identifiable {
    
    let id: Int
    
    let imdbID: String
    
    let title: String
    
    let mpaRating: String
    
    let writer: String
    
    let director: String
    
    let plot: String
    
}

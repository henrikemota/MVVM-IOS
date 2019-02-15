//
//  MovieResponse.swift
//  TesteEasy
//
//  Created by José Henrique Mota de Oliveira on 15/02/2019.
//  Copyright © 2019 HK Mobi. All rights reserved.
//

import Foundation

struct MovieResponse : Decodable{
    let status: String
    let status_message: String
    let data: Data
}

struct Data : Decodable{
    let movie_count: Int
    let limit: Int
    let movies: [Movie]?
}

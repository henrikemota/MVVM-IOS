//
//  Movie.swift
//  TesteEasy
//
//  Created by José Henrique Mota de Oliveira on 15/02/2019.
//  Copyright © 2019 HK Mobi. All rights reserved.
//

import Foundation

struct Movie : Decodable {
    let id: Int?
    let url: String?
    let imdbCode: String?
    let title: String?
    let titleEnglish: String?
    let titleLong: String?
    let slug: String?
    let year: Int?
    let rating: Double?
    let runtime: Int?
    let genres: [String]?
    let summary: String?
    let descriptionFull: String?
    let synopsis: String?
    let ytTrailerCode: String?
    let language: String?
    let mpaRating: String?
    let backgroundImage: String?
    let backgroundImageOriginal: String?
    let smallCoverImage: String?
    let mediumCoverImage: String?
    let largeCoverImage: String?
    let state: String?
    let dateUploaded: String?
    let dateUploadedUnix: Int?
}

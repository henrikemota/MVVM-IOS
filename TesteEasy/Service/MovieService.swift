//
//  MovieService.swift
//  TesteEasy
//
//  Created by José Henrique Mota de Oliveira on 14/02/2019.
//  Copyright © 2019 HK Mobi. All rights reserved.
//

import Foundation
import Alamofire

class MovieService {
    
    func getMovies(completion: @escaping (Result<MovieResponse>) -> Void) {
        AF.request("https://yts.am/api/v2/list_movies.json").responseDecodable{ (response: DataResponse<MovieResponse>) in
            print(response.result.value ?? "error")
            completion(response.result)
        }
    }
}

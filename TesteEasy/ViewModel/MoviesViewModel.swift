//
//  MoviesViewModel.swift
//  TesteEasy
//
//  Created by José Henrique Mota de Oliveira on 14/02/2019.
//  Copyright © 2019 HK Mobi. All rights reserved.
//

import UIKit
import Foundation

class MoviesViewModel{

    private var moviesList : [Movie]
    private var errorMessage: String?
    private var tableView: UITableView?
    
    init(tableView: UITableView) {
        self.tableView = tableView
        self.moviesList = [Movie]()
        getMovies()
    }
    
    public var sizeMovies : Int{
        return moviesList.count
    }
    
    public var movies : [Movie]{
        return moviesList
    }
    
    public var error : String{
        return errorMessage!
    }
    
    func getMovies(){
        MovieService().getMovies{ result in
            switch result {
            case .success(let movieResponse):
                self.moviesList = movieResponse.data.movies!
                self.tableView!.reloadData()
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            }
        }
    }
    
}

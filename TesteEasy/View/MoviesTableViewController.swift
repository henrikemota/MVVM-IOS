//
//  MoviesTableViewController.swift
//  TesteEasy
//
//  Created by José Henrique Mota de Oliveira on 14/02/2019.
//  Copyright © 2019 HK Mobi. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    var viewModel: MoviesViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = MoviesViewModel(tableView: self.tableView)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel!.sizeMovies
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movie", for: indexPath)
        
        let movie = viewModel!.movies[indexPath.row]
        
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = movie.summary
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        let destination = DetailsMovieViewController() // Your destination
        navigationController?.pushViewController(destination, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let destination = DetailsMovieViewController() // Your destination
        navigationController?.pushViewController(destination, animated: true)
    }
}

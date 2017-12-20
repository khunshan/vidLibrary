//
//  ViewController.swift
//  vidLibrary
//
//  Created by Khunshan Ahmad on 12/20/17.
//  Copyright © 2017 Khunshan Ahmad. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var movies: [Movie]?
    
    //View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Fetch Data from Data Center
        fetchData()
    }

    //Data Center 
    func fetchData() {
        DataCenter.fetchMoviesData { (moviesArray:[Movie]?, error:Error?) in
            print("response fetched")
            self.movies = moviesArray
        }
    }
}


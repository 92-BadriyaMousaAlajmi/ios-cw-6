//
//  MovieDetailsVc.swift
//  Classwork6
//
//  Created by بدرية موسى العجمي on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVc: UIViewController {
    
    var movieData : Movie = Movie( movieName: "Joker", movieReleaseDate: 2020, actors: [""], rating: 10.0, pgRating:"PG13" )
    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    
    @IBOutlet weak var actorImage1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImage2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImage3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
       override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
      
    }
    
    func setMovieDetails(){
        self.movieImage.image = UIImage(named: movieData.movieName)
        self.movieRated.text = movieData.pgRating
        self.movieRating.text = String(movieData.rating)
        self.movieReleaseDate.text = String(movieData.movieReleaseDate)
        self.actorName1.text =  movieData.actors[0]
        self.actorImage1.image = UIImage(named: movieData.actors[0])
        self.actorImage2.image = UIImage(named: movieData.actors[1])
        self.actorName2.text = movieData.actors[1]
        self.actorImage3.image = UIImage(named: movieData.actors[2])
        self.actorName3.text = movieData.actors[2]

    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

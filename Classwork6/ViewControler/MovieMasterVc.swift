//
//  MovieMasterVc.swift
//  Classwork6
//
//  Created by بدرية موسى العجمي on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

var selectedMovie: Movie = Movie(movieReleaseDate: 2020, actors: [""], rating: 9.9, pgRating: "PG13")

class MovieMasterVc: UIViewController {
    var MarvelImages = MarvelMovieData
    var DCImages = DCMovieData
    
    @IBOutlet weak var marvelImage0: UIButton!
    @IBOutlet weak var marvelImage1: UIButton!
    @IBOutlet weak var marvelImage2: UIButton!
    @IBOutlet weak var marvelImage3: UIButton!
    @IBOutlet weak var marvelImage4: UIButton!
    @IBOutlet weak var marvelImage5: UIButton!
    
    @IBOutlet weak var DCImage0: UIButton!
    @IBOutlet weak var DCImage1: UIButton!
    @IBOutlet weak var DCImage2: UIButton!
    @IBOutlet weak var DCImage3: UIButton!
    @IBOutlet weak var DCImage4: UIButton!
    @IBOutlet weak var DCImage5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let movieController = segue.destination as?
            MovieDetailsVc else {
                fatalError()
        }
        movieController.movieData = selectedMovie
    }
    
    func setMarvelImages(){
        marvelImage0.setBackgroundImage(UIImage(named: MarvelImages[0].movieName ), for: .normal)
        marvelImage1.setBackgroundImage(UIImage(named: MarvelImages[1].movieName ), for: .normal)
        marvelImage2.setBackgroundImage(UIImage(named: MarvelImages[2].movieName ), for: .normal)
        marvelImage3.setBackgroundImage(UIImage(named: MarvelImages[3].movieName ), for: .normal)
        marvelImage4.setBackgroundImage(UIImage(named: MarvelImages[4].movieName ), for: .normal)
        marvelImage5.setBackgroundImage(UIImage(named: MarvelImages[5].movieName ), for: .normal)
        
    }
    
    func setDCImages(){
        DCImage0.setBackgroundImage(UIImage(named: DCImages[0].movieName ), for: .normal)
        DCImage1.setBackgroundImage(UIImage(named: DCImages[1].movieName ), for: .normal)
        DCImage2.setBackgroundImage(UIImage(named: DCImages[2].movieName ), for: .normal)
        DCImage3.setBackgroundImage(UIImage(named: DCImages[3].movieName ), for: .normal)
        DCImage4.setBackgroundImage(UIImage(named: DCImages[4].movieName ), for: .normal)
        DCImage5.setBackgroundImage(UIImage(named: DCImages[5].movieName ), for: .normal)
    }
    
    
    @IBAction func DCBtns(_ sender: UIButton) {
        print ("DC",sender.tag)
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier:"Moon", sender:selectedMovie)
    }
    
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        print ("Marvel",sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier:"Moon", sender:selectedMovie)

    }
    
    
    /*    // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}

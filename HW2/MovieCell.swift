//
//  MovieCell.swift
//  HW2
//
//  Created by stephanie saenz on 9/11/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var viewNameLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with movie: Movie) {
        movieNameLabel.text = movie.movieName
        viewNameLabel.text = movie.summary

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.backdropPath, into: movieImageView)
    }
    
    
    
}

//
//  Movie.swift
//  HW2
//
//  Created by stephanie saenz on 9/10/23.
//

import Foundation


// TODO: Create a Movie struct with selected properties
struct Movie {
    let movieName: String
    let summary: String
    let backdropPath: URL
    let voteAverage: Double
    let voteCount: Int
    let popularity: Double
}

// TODO: Create an extension with mock movies static var
extension Movie {
    /// An array of mock movies with selected properties
    static var mockMovies: [Movie] = [
        Movie(movieName: "Meg 2: The Trench",
              summary: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/w500/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
              voteAverage: 7.0,
              voteCount: 1563,
              popularity: 4372.097),

        Movie(movieName: "Barbie",
              summary: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/w500/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
              voteAverage: 7.4,
              voteCount: 4007,
              popularity: 3486.508),

        Movie(movieName: "The Nun II",
              summary: "1956 – France. A priest is murdered. An evil is spreading. The sequel to the worldwide smash hit follows Sister Irene as she once again comes face-to-face with Valak, the demon nun.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/w500/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
              voteAverage: 7.0,
              voteCount: 63,
              popularity: 1812.129),

        Movie(movieName: "Strays",
              summary: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/w500/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!,
              voteAverage: 7.3,
              voteCount: 151,
              popularity: 1691.43),

        Movie(movieName: "Elemental",
              summary: "In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/w500/6oH378KUfCEitzJkm07r97L0RsZ.jpg")!,
              voteAverage: 7.8,
              voteCount: 1813,
              popularity: 1683.227),
        
        Movie(movieName: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
              summary: "After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.",
            backdropPath:URL(string:"https://image.tmdb.org/t/p/w500/sGm09gLVyICQl8lVIHpmHZAgSNq.jpg")!,
              voteAverage: 7.3,
              voteCount: 380,
              popularity: 1402.547),

        // Add more mock movies here as needed...
    ]
}



// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}

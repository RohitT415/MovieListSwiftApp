//
//  MovieRow.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Text(movie.name)
                .font(.title3)
            
            
            Spacer()
            
            
            if movie.isFavorite {
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.blue)
            }
            
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var movies = ModelData().movies
    
    static var previews: some View {
        Group {
            MovieRow(movie: movies[0])
            MovieRow(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

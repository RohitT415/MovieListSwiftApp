//
//  MovieList.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredMovies: [Movie] {
        modelData.movies.filter { movie in
            (!showFavoritesOnly || movie.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Watched Movies")
                }

                ForEach(filteredMovies) { movie in
                    NavigationLink {
                        MovieDetail(movie: movie)
                    } label: {
                        MovieRow(movie: movie)
                    }
                }
            }
            .navigationTitle("Best Movies of 2022")
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
            .environmentObject(ModelData())
    }
}

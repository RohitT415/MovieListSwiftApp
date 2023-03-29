//
//  MovieDetail.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import SwiftUI

struct MovieDetail: View {
    @EnvironmentObject var modelData: ModelData
    var movie: Movie

    
    var movieIndex: Int {
        modelData.movies.firstIndex(where: { $0.id == movie.id })!
    }
    
    var body: some View {
        ScrollView {
        
            VStack{
                HStack {
                    Text(movie.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.movies[movieIndex].isFavorite)
                }
                
                Divider()
                
                Text(movie.description)
            }
            .padding()
            
            MovieImage(image: Image((movie.name)))
            
            
        }
        .navigationTitle(movie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct MovieDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        MovieDetail(movie: modelData.movies[0])
            .environmentObject(modelData)
    }
}

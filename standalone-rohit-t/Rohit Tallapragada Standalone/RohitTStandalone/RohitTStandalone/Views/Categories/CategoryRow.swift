//
//  CategoryRow.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/13/23.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Movie]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { movie in
                        NavigationLink {
                            MovieDetail(movie: movie)
                        } label: {
                            CategoryItem(movie: movie)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var movies = ModelData().movies

    static var previews: some View {
        CategoryRow(
            categoryName: movies[0].category.rawValue,
            items: Array(movies.prefix(4))
        )
    }
}

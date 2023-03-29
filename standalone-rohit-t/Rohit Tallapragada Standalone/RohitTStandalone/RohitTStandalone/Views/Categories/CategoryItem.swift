//
//  CategoryItem.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/13/23.
//

import SwiftUI

struct CategoryItem: View {
    var movie: Movie

    var body: some View {
        VStack(alignment: .leading) {
            movie.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(movie.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(movie: ModelData().movies[0])
    }
}

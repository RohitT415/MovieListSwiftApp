//
//  MovieImage.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import SwiftUI

struct MovieImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Capsule())
    }
}


struct MovieImage_Previews: PreviewProvider {
    static var previews: some View {
        MovieImage(image: Image("Everything Everywhere All at Once"))
    }
}

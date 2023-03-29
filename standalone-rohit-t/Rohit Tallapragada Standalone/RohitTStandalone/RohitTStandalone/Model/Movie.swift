//
//  Movie.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
        enum Category: String, CaseIterable, Codable {
            case action = "Action/Adventure"
            case animation = "Animation"
            case drama = "Drama"
            case horror = "Horror"
            case documentary = "Documentary"
            case comedy = "Comedy"
        }
    
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}

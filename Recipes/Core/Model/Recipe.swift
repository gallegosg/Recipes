//
//  Recipe.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import Foundation

struct Recipes: Codable {
    let recipes: [Recipe]
}

struct Recipe: Codable, Identifiable {
    let id: String
    let cuisine, name: String
    let photoUrlLarge, photoUrlSmall: String
    let sourceUrl: String?
    let youtubeUrl: String?

    enum CodingKeys: String, CodingKey {
        case id = "uuid"
        case cuisine, name
        case photoUrlLarge = "photo_url_large"
        case photoUrlSmall = "photo_url_small"
        case sourceUrl = "source_url"
        case youtubeUrl = "youtube_url"
    }
}

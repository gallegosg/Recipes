//
//  RecipeState.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import Foundation

enum RecipeState {
    case na
    case loading
    case success(_ recipes: [Recipe])
    case failed(error: String)
}

//
//  RecipeError.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import Foundation

enum RecipeError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    
    var errorMessage: String {
        switch self {
        case .invalidURL:
            return "Could not reach server. Please pull to refresh"
        case .invalidResponse:
            return "Invalid response. Please pull to refresh"
        case .invalidData:
            return "Invalid Data. Please pull to refresh"
        }
    }
}

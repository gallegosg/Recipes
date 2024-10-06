//
//  RecipeState.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import Foundation

//made equatable for testing
enum RecipeState: Equatable {
    case na
    case loading
    case success(_ recipes: [Recipe])
    case failed(error: String)
    
    static func == (lhs: RecipeState, rhs: RecipeState) -> Bool {
            switch (lhs, rhs) {
            case (.na, .na), (.loading, .loading):
                return true
            case (.success(let recipes1), .success(let recipes2)):
                return recipes1 == recipes2
            case (.failed(let error1), .failed(let error2)):
                return error1 == error2
            default:
                return false
            }
        }
}

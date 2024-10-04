//
//  RecipeViewModel.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import Foundation

@MainActor
class RecipeViewModel: ObservableObject {
    private let service: RecipeService
    @Published var state: RecipeState = .na
    @Published var searchText: String = ""
    
    init(service: RecipeService) {
        self.service = service
    }
    
    func fetchRecipes() async {
        state = .loading
        
        do {
            let recipes = try await service.fetchRecipes()

            state = .success(recipes)
        } catch let error as RecipeError {
            state = .failed(error: error.errorMessage)
        } catch {
            state = .failed(error: "Something went wrong, please try again.")
        }
        
    }
}

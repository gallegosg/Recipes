//
//  RecipeListView.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import SwiftUI

struct RecipeListView: View {
    let recipes: [Recipe]
    @StateObject var vm: RecipeViewModel
    var body: some View {
        List(searchResults) { recipe in
            RecipeListRow(recipe: recipe)
        }
        .overlay {
            if recipes.isEmpty {
                EmptyView()
            }
        }
        .searchable(text: $vm.searchText, prompt: "Search for a recipe or cuisine")
        .navigationTitle("Recipes")
    }
    
    var searchResults: [Recipe] {
        if vm.searchText.isEmpty {
            return recipes
        } else {
            return recipes.filter { $0.name.contains(vm.searchText) || $0.cuisine.contains(vm.searchText) }
        }
    }
}

#Preview {
    RecipeListView(recipes: sampleRecipes, vm: RecipeViewModel(service: RecipeService()))
}


let sampleRecipes: [Recipe] = [
    Recipe(
        id: "0c6ca6e7-e32a-4053-b824-1dbf749910d8",
        cuisine: "Malaysian",
        name: "Apam Balik",
        photoUrlLarge: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/large.jpg",
        photoUrlSmall: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/small.jpg",
        sourceUrl: "https://www.nyonyacooking.com/recipes/apam-balik~SJ5WuvsDf9WQ",
        youtubeUrl: "https://www.youtube.com/watch?v=6R8ffRRJcrg"
    ),
    Recipe(
        id: "599344f4-3c5c-4cca-b914-2210e3b3312f",
        cuisine: "British",
        name: "Apple & Blackberry Crumble",
        photoUrlLarge: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/535dfe4e-5d61-4db6-ba8f-7a27b1214f5d/large.jpg",
        photoUrlSmall: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/535dfe4e-5d61-4db6-ba8f-7a27b1214f5d/small.jpg",
        sourceUrl: "https://www.bbcgoodfood.com/recipes/778642/apple-and-blackberry-crumble",
        youtubeUrl: "https://www.youtube.com/watch?v=4vhcOwVBDO4"
    ),
    Recipe(
        id: "74f6d4eb-da50-4901-94d1-deae2d8af1d1",
        cuisine: "British",
        name: "Apple Frangipan Tart",
        photoUrlLarge: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/7276e9f9-02a2-47a0-8d70-d91bdb149e9e/large.jpg",
        photoUrlSmall: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/7276e9f9-02a2-47a0-8d70-d91bdb149e9e/small.jpg",
        sourceUrl: nil,
        youtubeUrl: "https://www.youtube.com/watch?v=rp8Slv4INLk"
    )
]

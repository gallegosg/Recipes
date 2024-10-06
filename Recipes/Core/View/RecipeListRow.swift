//
//  RecipeListRow.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/3/24.
//

import SwiftUI
import Kingfisher
struct RecipeListRow: View {
    let recipe: Recipe
    var body: some View {
        HStack {
            KFImage(URL(string: recipe.photoUrlSmall)!)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            VStack(alignment: .leading) {
                Text(recipe.name)
                    .font(.headline)
                Text(recipe.cuisine)
                    .font(.subheadline)
            }
                
            Spacer()
            if let sourceUrl = recipe.sourceUrl, let url = URL(string: sourceUrl) {
                Link(destination: url) {
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.gray)
                }
            }
        }
        .contextMenu {
            ContextMenuItem(urlString: recipe.youtubeUrl, iconName: "video", title: "Video")
            ContextMenuItem(urlString: recipe.sourceUrl, iconName: "link", title: "Recipe Source")
        }
    }
}

#Preview {
    RecipeListRow(recipe: sample)
}

let sample = Recipe(
    id: "0c6ca6e7-e32a-4053-b824-1dbf749910d8",
    cuisine: "Malaysian",
    name: "Apam Balik",
    photoUrlLarge: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/large.jpg",
    photoUrlSmall: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/small.jpg",
    sourceUrl: "https://www.nyonyacooking.com/recipes/apam-balik~SJ5WuvsDf9WQ",
    youtubeUrl: "https://www.youtube.com/watch?v=6R8ffRRJcrg"
)

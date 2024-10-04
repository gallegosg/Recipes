//
//  ContentView.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = RecipeViewModel(service: RecipeService())
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        switch vm.state {
                        case .na:
                            Text("Refresh to see recipes")
                        case .loading:
                            ProgressView()
                        case .success(let recipes):
                            RecipeListView(recipes: recipes, vm: vm)
                        case .failed(let error):
                            Text(error)
                                .font(.headline)
                        }
                    }
                    .frame(minWidth: geometry.size.width, minHeight: geometry.size.height)
                }
                .refreshable {
                    Task {
                        await vm.fetchRecipes()
                    }
                }
            }
        }
        .task {
            await vm.fetchRecipes()
        }
    }
}

#Preview {
    ContentView()
}

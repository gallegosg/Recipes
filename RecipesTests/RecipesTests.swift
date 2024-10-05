//
//  RecipesTests.swift
//  RecipesTests
//
//  Created by Gerardo Gallegos on 10/2/24.
//
import Testing
@testable import Recipes

private let service = RecipeService()

@Test("Check all recipes") func testAllRecipes() async throws {
    let recipes = try await service.fetchRecipes()
    #expect(recipes.count > 0)
}

@Test("Check empty recipes") func testEmptyRecipes() async throws {
    let recipes = try await service.fetchRecipes(for: K.emptyUrl)
    #expect(recipes.isEmpty)
}


@Test("Check malformed data") func testMalformedRecipes() async throws {
    await #expect(throws: RecipeError.invalidData) {
        try await service.fetchRecipes(for: K.malformedUrl)
    }
}


//test that view model state is updated when receving recipes
@Test("Check view model state updates") func testViewModelState() async throws {

    let vm = await RecipeViewModel(service: service)
    let recipes = try await service.fetchRecipes()
    
    await #expect(vm.state == .na)
    await vm.fetchRecipes()
    await #expect(vm.state == .success(recipes))
}

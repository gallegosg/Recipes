import Foundation

struct RecipeService {
    
    //function to hit api using async await
    func fetchRecipes() async throws -> [Recipe] {
        guard let url = URL(string: K.allUrl) else {
            throw RecipeError.invalidURL
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let _ = response as? HTTPURLResponse else {
                throw RecipeError.invalidResponse
            }
            
            do {
                let recipes = try JSONDecoder().decode(Recipes.self, from: data)
                return recipes.recipes
            } catch {
                throw RecipeError.invalidData
            }
        }
        catch {
            throw RecipeError.invalidResponse
        }
    }
}

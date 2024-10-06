import Foundation

struct RecipeService {
    
    //function to hit api
    func fetchRecipes(for urlString: String = K.allUrl) async throws -> [Recipe] {
        guard let url = URL(string: urlString) else {
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
            throw error
        }
    }
    
}

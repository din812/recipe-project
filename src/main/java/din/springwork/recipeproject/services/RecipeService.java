package din.springwork.recipeproject.services;

import din.springwork.recipeproject.model.Recipe;

import java.util.Set;

public interface RecipeService {

    Set<Recipe> getRecipes();
}

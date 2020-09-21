package din.springwork.recipeproject.services;

import din.springwork.recipeproject.commands.RecipeCommand;
import din.springwork.recipeproject.model.Recipe;

import java.util.Set;

public interface RecipeService {

    Set<Recipe> getRecipes();

    Recipe findById(Long l);

    RecipeCommand findCommandById(Long l);

    RecipeCommand saveRecipeCommand(RecipeCommand command);

    void deleteById(Long l);
}

class RecipesController < ApplicationController
  def index
   
    @recipes = Recipe.all
  end

  def show
      @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build}
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id

  


    @recipe.save
    
    redirect_to recipe_path(@recipe)
  end





  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)

    redirect_to recipe_path(@recipe)
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to "/recipes"
  end

  private

  def ingredient_params
    params.permit(:ingredient_name, :recipe_id)
  end


  def recipe_params
    params.require(:recipe).permit(:name, :username, :description, :instructions, ingredients_attributes: [:ingredient_name, :recipe_id])
  end
end


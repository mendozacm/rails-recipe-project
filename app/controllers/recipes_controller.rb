class RecipesController < ApplicationController
  def index
   
    @recipes = Recipe.all
  end

  def show
      @recipe = Recipe.find(params[:id])
  end

  def new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    
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

  def recipe_params
    params.require(:recipe).permit(:name, :username, :description, :instructions, :ingredients)
  end
end


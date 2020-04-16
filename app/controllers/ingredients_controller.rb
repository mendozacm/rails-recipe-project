class IngredientsController < ApplicationController
  def new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
  end

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:ingredient_name, :recipe_id)
  end


end

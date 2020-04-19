class Ingredient < ApplicationRecord

has_many :recipes
belongs_to :recipe

    def ingredient_attributes=(ingredient)
    self.ingredient = Ingredient.find_or_create_by(ingredient_name: ingredient[:ingredient_name])
    self.ingredient.update(ingredient)
    end

end

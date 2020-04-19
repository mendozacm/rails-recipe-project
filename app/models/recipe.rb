class Recipe < ApplicationRecord

    #belongs_to :user
    has_many :comments
    has_many :users, through: :comments
    has_many :ingredients
    accepts_nested_attributes_for :ingredients, reject_if: lambda {|attributes| attributes['ingredient_name'].blank?}


    def ingredient_attributes=(ingredient)
        self.ingredient = Ingredient.find_or_create_by(ingredient_name: ingredient[:ingredient_name])
        self.ingredient.update(ingredient)
        end



end

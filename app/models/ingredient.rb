class Ingredient < ApplicationRecord

has_many :recipes
belongs_to :recipe

end

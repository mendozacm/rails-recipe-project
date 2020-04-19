class Recipe < ApplicationRecord

    #belongs_to :user
    has_many :comments
    has_many :users, through: :comments
    has_many :ingredients
    accepts_nested_attributes_for :ingredients

end

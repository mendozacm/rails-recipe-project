class User < ApplicationRecord
  devise :rememberable, :omniauthable, omniauth_providers: %i[facebook]

    has_many :comments
    has_many :recipes, through: :comments
    #has_many :recipes
end

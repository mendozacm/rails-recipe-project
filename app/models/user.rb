class User < ApplicationRecord
  devise :rememberable, :omniauthable, omniauth_providers: [:google_oauth2]

    has_many :comments
    has_many :recipes, through: :comments
    #has_many :recipes
end

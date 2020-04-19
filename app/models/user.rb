class User < ApplicationRecord
    validates :name, presence: true

    validates :username, length: {minimum: 5 }, uniqueness: true

    validates :bio, length: { maximum: 500 }, presence: true

    has_many :comments
    has_many :recipes, through: :comments
    #has_many :recipes

    has_secure_password

   
end

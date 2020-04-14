class User < ApplicationRecord

    validates :name, presence: true

    validates :username, length: {minimum: 5 }, presence: true, uniqueness: true

    validates :bio, length: { maximum: 500 }, presence: true


    has_many :comments
    has_many :recipes
    has_many :recipes, through: :comments
    has_secure_password
end

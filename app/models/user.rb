class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :omniauthable

    has_many :comments
    has_many :recipes, through: :comments
    #has_many :recipes

    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.provider = auth.provider
            user.name = auth.info.name
            user.uid = auth.uid
            user.email = auth.info.email
            user.password = Devise.firendly_token[0,20]
        end
    end
    



   
end

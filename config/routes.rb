Rails.application.routes.draw do
 

  resources :users, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  resources :recipes, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  resources :comments, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

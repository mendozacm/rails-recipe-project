Rails.application.routes.draw do
 

  resources :users, only: [:index, :create, :new, :show, :update]

  resources :recipes, only: [:index, :create, :new, :show, :update]

 resources :comments, only: [:index, :create, :new, :show, :update]

  get 'hello_world', to: 'static#hello_world'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
 


 
  resources :ingredients, only: [:index, :create, :new, :show, :update, :edit, :destroy]


  resources :users, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  resources :recipes, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  resources :comments, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
  get 'signup', to: 'devise/registrations#new'
  end



  get '/recipes/:ingredient_name' => 'recipes#search'

  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

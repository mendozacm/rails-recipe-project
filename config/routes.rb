Rails.application.routes.draw do
 


  resources :ingredients, only: [:index, :create, :new, :show, :update, :edit, :destroy]


  resources :users, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  resources :recipes, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  resources :comments, only: [:index, :create, :new, :show, :update, :edit, :destroy]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

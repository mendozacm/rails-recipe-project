Rails.application.routes.draw do
  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/index'

  get 'users/show'

  get 'recipes/create'

  get 'recipes/edit'

  get 'recipes/update'

  get 'recipes/destroy'

  get 'recipes/index'

  get 'recipes/show'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'comments/index'

  get 'comments/show'

  get 'hello_world', to: 'static#hello_world'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

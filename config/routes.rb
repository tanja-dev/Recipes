Rails.application.routes.draw do
  root to: 'recipes#index'
  
  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new', as: :new_recipe
  get '/recipes/:id', to: 'recipes#show', as: :recipe
  post '/recipes', to: 'recipes#create'
  get '/recipes/:id/edit', to: 'recipes#edit', as: :edit_recipe
  patch '/recipes/:id', to: 'recipes#update'
  delete '/recipes/:id', to: 'recipes#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

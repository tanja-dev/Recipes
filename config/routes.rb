Rails.application.routes.draw do
  get '/recipes', to: 'recipes#index'
  get '/recipes/:id', to: 'recipes#show', as: :recipe

  root to: 'recipes#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
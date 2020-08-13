Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :recipes do
    resources :instructions
    resources :ingredients
  end

  get 'users/signup', to: 'users#new'
  resources :users, except: :new

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

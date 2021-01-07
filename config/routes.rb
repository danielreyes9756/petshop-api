Rails.application.routes.draw do
  root to: "sizes#new"
  devise_for :users
  resources :sizes
  resources :animals
  resources :items
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

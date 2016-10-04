Rails.application.routes.draw do

  root 'recipes#index'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  resources :users

  resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :categories
  resources :posts
  resources :home, only: [:index, :show, :create]
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "categories#index"

end

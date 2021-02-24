Rails.application.routes.draw do
  devise_for :users
  root 'works#index'
  resources :works
  resources :users, only: [:show]
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

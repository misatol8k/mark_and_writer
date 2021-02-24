Rails.application.routes.draw do
  get 'tops/index'
  devise_for :users
  root 'tops#index'
  resources :works
  resources :users, only: [:show, :index]
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

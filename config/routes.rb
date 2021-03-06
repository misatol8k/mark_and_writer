Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :works do
    resources :impressions
  end
  resources :users, only: [:show, :index]
  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

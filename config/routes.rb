Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :users do
    resources :postings,  only: [:new, :create, :destroy]
  end
  resources :postings, only: [:index]
  root  'static_pages#home'
end

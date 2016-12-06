Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :users, only: [:show, :index]

  resources :postings,  only: [:new, :create, :index, :destroy]
  resources :postings do
    resources :replies, only: [:new, :create, :index, :destroy]
  end

  root  'static_pages#home'
end

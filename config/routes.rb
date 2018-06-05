Rails.application.routes.draw do
  root 'accounts#index'
  devise_for :users
  resources :accounts

  root 'boards#index' 
  resources :boards do
  resources :topics
  end

end


Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  resources :users, only: [:edit, :update]
  # delete '/logout', to: 'sessions#destroy'
  # get '/users/sign_out', to: 'sessions#destroy', as: 'sign_out'
  
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "messages#index"
end

Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  # Defines the root path route ("/")
  root to: 'limericks#index'

  get 'user/:user_id/limericks', to: 'user_limericks#index', as: 'user_limericks'

end

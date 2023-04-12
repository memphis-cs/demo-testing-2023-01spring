Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  get 'limericks', to: 'limericks#index', as: 'limericks'

  # Defines the root path route ("/")
  root to: redirect("/limericks")

end

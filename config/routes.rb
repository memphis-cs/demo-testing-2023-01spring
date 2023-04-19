Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  # Defines the root path route ("/")
  root to: 'limericks#index'

  post 'limericks', to: 'limericks#create', as: 'limericks'
  get 'limericks/new', to: 'limericks#new', as: 'new_limerick'
  patch 'limericks/:id', to: 'limericks#update', as: 'limerick'
  put 'limericks/:id', to: 'limericks#update'
  delete 'limericks/:id', to: 'limericks#destroy'
  get 'limericks/:id/edit', to: 'limericks#edit', as: 'edit_limerick'

  get 'users/:user_id/limericks', to: 'user_limericks#index', as: 'user_limericks'

end

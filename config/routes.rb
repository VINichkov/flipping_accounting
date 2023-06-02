Rails.application.routes.draw do
  resources :target_params
  resources :projects
  resources :states
  resources :project_types
  resources :cities
  root "main#main"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
